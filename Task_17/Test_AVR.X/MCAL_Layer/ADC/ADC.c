/* 
 * File:   ADC.c
 * Author: Omar Hassan
 *
 * Created on July 17, 2024, 7:17 PM
 */

#include "ADC.h"

static uint16 * ADC_pu16AsynchConversionResult = NULL;
static void (* ADC_pvNotificationFunc)(void)= NULL;
static uint8 ADC_u8ISRState ;
static uint8 * ADC_pu8ChainChannel ;
static uint8 ADC_u8ChainSize ;
static uint8 ADC_u8Index ;
static uint8 ADC_u8State= IDLE ;

void ADC_voidInit(void)
{
	/*Select the voltage reference*/
	#if ADC_VREF == AREF
		CLEAR_BIT(ADMUX , ADMUX_REFS0) ;
		CLEAR_BIT(ADMUX , ADMUX_REFS1) ;

	#elif ADC_VREF == AVCC
		SET_BIT(ADMUX , ADMUX_REFS0) ;
		CLEAR_BIT(ADMUX , ADMUX_REFS1) ;

	#elif ADC_VREF == INTERNAL_2_56
		SET_BIT(ADMUX , ADMUX_REFS0) ;
		SET_BIT(ADMUX , ADMUX_REFS1) ;

	#else
		#error "Wrong ADC_VREF config"

	#endif


	/*Set Left Adjust Result*/
	#if ADC_ADJUSTMENT == RIGHT_ADJUSTMENT
			CLEAR_BIT(ADMUX , ADMUX_ADLAR) ;

	#elif ADC_ADJUSTMENT == LEFT_ADJUSTMENT
			SET_BIT(ADMUX , ADMUX_ADLAR) ;

	#else
		#error "Wrong ADC_ADJUSTMENT config"
	
	#endif 

	/*Set Prescaler Value*/
	ADSAR &= ADC_PRE_MASK ;
	ADSAR |= ADC_PRESCALLER ;

	/* ENABLE The Peripheral & Interrupt  */
	
	/*Enable ADC Peripheral*/
	#if ADC_STATUS == ADC_DISABLE
		CLEAR_BIT(ADSAR , ADSAR_ADEN) ;
	#elif ADC_STATUS == ADC_ENABLE
		SET_BIT(ADSAR , ADSAR_ADEN) ;
	#else
	#error "Wrong ADC_STATUS config"
	#endif 

	/*Enable ADC Interrupt*/
	#if INT_STATUS == INT_DISABLE
		CLEAR_BIT(ADSAR , ADSAR_ADIE) ;
	#elif INT_STATUS == INT_ENABLE
		SET_BIT(ADSAR , ADSAR_ADIE) ;
	#else
	#error "Wrong INT_STATUS config"
	#endif 

}

//----------------------------------------------------------------------------------------------------------------------------------------------------

void ADC_voidEnable (void)
{
	SET_BIT(ADSAR , ADSAR_ADEN) ;
}

//----------------------------------------------------------------------------------------------------------------------------------------------------

void ADC_voidDisable (void)
{
	CLEAR_BIT(ADSAR , ADSAR_ADEN) ;
}

//----------------------------------------------------------------------------------------------------------------------------------------------------

void ADC_voidInterruptEnable (void)
{
	SET_BIT(ADSAR , ADSAR_ADIE) ;
}

//----------------------------------------------------------------------------------------------------------------------------------------------------

void ADC_voidInterruptDisable (void)
{
	CLEAR_BIT(ADSAR , ADSAR_ADIE) ;
}

//----------------------------------------------------------------------------------------------------------------------------------------------------

uint8 ADC_u8SetPrescaler (uint8 Copy_u8Prescaler)
{
	uint8 Local_u8ErrorState = OK ;

	if (Copy_u8Prescaler < 8)
	{
		/*Set Prescaler Value*/
		ADSAR &= ADC_PRE_MASK ;
		ADSAR |= Copy_u8Prescaler ;
	}

	return Local_u8ErrorState ;
}

//----------------------------------------------------------------------------------------------------------------------------------------------------

uint8 ADC_u8GetResultSync (uint8 Copy_u8Channel , uint16 * Copy_pu16Result)
{
	uint8 Local_u8ErrorState = OK ;
	uint32 Local_u32TimeoutCounter = 0 ;
	if (Copy_pu16Result != NULL)
	{
		if (ADC_u8State == IDLE)
		{
			/*ADC is now Busy*/
			ADC_u8State = BUSY ;

			/*Set required channel*/
			ADMUX &= ADC_CH_MASK ;
			ADMUX |= Copy_u8Channel ;

			/*Start Conversion*/
			SET_BIT(ADSAR , ADSAR_ADSC) ;

			/*Waiting until the conversion is complete*/
			while (((READ_BIT(ADSAR , ADSAR_ADIF)) == 0) && (Local_u32TimeoutCounter < ADC_TIMEOUT))
			{
				Local_u32TimeoutCounter++ ;
			}
			if (Local_u32TimeoutCounter == ADC_TIMEOUT)
			{
				Local_u8ErrorState = TIMEOUT_STATE ;
			}
			else
			{
				/*Clear the interrupt flag*/
				SET_BIT(ADSAR , ADSAR_ADIF) ;

				/*Return Conversion Result*/
				#if ADC_ADJUSTMENT == RIGHT_ADJUSTMENT
					*Copy_pu16Result = (ADCL|(ADCH << 8))  ;

				#elif ADC_ADJUSTMENT == LEFT_ADJUSTMENT
					*Copy_pu16Result = ADCH ;
				#else
					#error "Wrong ADC_ADJUSTMENT config"

				#endif
			}

			/*ADC is IDLE*/
			ADC_u8State = IDLE ;
		}
		else
		{
			Local_u8ErrorState = BUSY_STATE ;
		}


	}
	else
	{
		Local_u8ErrorState = NULL_POINTER ;
	}
	return Local_u8ErrorState ;
}

//----------------------------------------------------------------------------------------------------------------------------------------------------

uint8 ADC_u8StartConversionAsynch (uint8 Copy_u8Channel , uint16 * Copy_pu16Result , void (*Copy_pvNotificationFunc)(void))
{
	uint8 Local_u8ErrorState = OK ;

	if ((Copy_pu16Result != NULL) && (Copy_pvNotificationFunc != NULL))
	{
		if (ADC_u8State == IDLE)
		{
			/*ADC is now Busy*/
			ADC_u8State = BUSY ;

			/*Set ISR State*/
			ADC_u8ISRState = SINGLE_CHANNEL_ASYNCH ;

			/*Initialize the global result pointer*/
			ADC_pu16AsynchConversionResult = Copy_pu16Result;

			/*Initialize the global notification function pointer*/
			ADC_pvNotificationFunc= Copy_pvNotificationFunc;

			/*Set required channel*/
			ADMUX &= ADC_CH_MASK ;
			ADMUX |= Copy_u8Channel ;

			/*Start Conversion*/
			SET_BIT(ADSAR , ADSAR_ADSC) ;

			/*ADC Conversion Complete Interrupt Enable*/
			SET_BIT(ADSAR , ADSAR_ADIE) ;
		}
		else
		{
			Local_u8ErrorState = BUSY_STATE ;
		}
	}
	else
	{
		Local_u8ErrorState = NULL_POINTER ;
	}

	return Local_u8ErrorState ;
}

//----------------------------------------------------------------------------------------------------------------------------------------------------

uint8 ADC_u8StartChainAsynch (Chain_t * Copy_Chain)
{
	uint8 Local_u8ErrorState = OK ;

	if ((Copy_Chain != NULL) && (Copy_Chain->Channel != NULL) && (Copy_Chain->NotificationFunc != NULL) && (Copy_Chain->Result))
	{
		if (ADC_u8State == IDLE)
		{
			/*ADC is now Busy*/
			ADC_u8State = BUSY ;

			/*Set ISR State*/
			ADC_u8ISRState = CHAIN_CHANNEL_ASYNCH ;

			/*Assign the ADC data globally*/
			ADC_pu16AsynchConversionResult = Copy_Chain->Result ;
			ADC_pu8ChainChannel = Copy_Chain->Channel ;
			ADC_u8ChainSize = Copy_Chain->Size ;
			ADC_pvNotificationFunc = Copy_Chain->NotificationFunc ;

			/*Set Index to first element*/
			ADC_u8Index = 0 ;

			/*Set required channel*/
			ADMUX &= ADC_CH_MASK ;
			ADMUX |= ADC_pu8ChainChannel[ADC_u8Index] ;

			/*Start Conversion*/
			SET_BIT(ADSAR , ADSAR_ADSC) ;

			/*ADC Conversion Complete Interrupt Enable*/
			SET_BIT(ADSAR , ADSAR_ADIE) ;
		}
		else
		{
			Local_u8ErrorState = BUSY_STATE ;
		}

	}
	else
	{
		Local_u8ErrorState = NULL_POINTER ;
	}
	return Local_u8ErrorState ;
}

//----------------------------------------------------------------------------------------------------------------------------------------------------

/* ISR for ADC conversion complete */
void __vector_16 (void)  __attribute__((signal)) ;
void __vector_16 (void)
{
	if (ADC_u8ISRState == SINGLE_CHANNEL_ASYNCH)
	{
		/*Return Conversion Result*/
				#if ADC_ADJUSTMENT == RIGHT_ADJUSTMENT
					* ADC_pu16AsynchConversionResult = (ADCL|(ADCH << 8))  ;

				#elif ADC_ADJUSTMENT == LEFT_ADJUSTMENT
					*ADC_pu16AsynchConversionResult = ADCH ;
				#else
					#error "Wrong ADC_ADJUSTMENT config"

				#endif

		/*ADC is IDLE*/
		ADC_u8State = IDLE ;

		/*Call Notification Function*/
		ADC_pvNotificationFunc() ;

		/*Disable the Conversion Complete Interrupt*/
		CLEAR_BIT(ADSAR , ADSAR_ADIE) ;
	}
	else
	{
		/*Return Conversion Result*/
		#if ADC_ADJUSTMENT == RIGHT_ADJUSTMENT
			*ADC_pu16AsynchConversionResult = (ADCL|(ADCH << 8))  ;

		#elif ADC_ADJUSTMENT == LEFT_ADJUSTMENT
			*ADC_pu16AsynchConversionResult = ADCH ;
		#else
			#error "Wrong ADC_ADJUSTMENT config"

		#endif

		/*Increment Data index of the chain*/
		ADC_u8Index++ ;

		if (ADC_u8Index == ADC_u8ChainSize)
		{
			/*ADC is IDLE*/
			ADC_u8State = IDLE ;

			/*Call Notification Function*/
			ADC_pvNotificationFunc() ;

			/*Disable the Conversion Complete Interrupt*/
			CLEAR_BIT(ADSAR , ADSAR_ADIE) ;
		}
		else
		{
			/*Set required channel*/
			ADMUX &= ADC_CH_MASK ;
			ADMUX |= ADC_pu8ChainChannel[ADC_u8Index] ;

			/*Start Conversion*/
			SET_BIT(ADSAR , ADSAR_ADSC) ;
		}
	}
}
/* 
 * File:   ADC.h
 * Author: Omar Hassan
 *
 * Created on July 17, 2024, 7:17 PM
 */

#ifndef ADC_H
#define	ADC_H

/* Section : Includes */
#include "../mcal_std_types.h"
#include "../bit_math.h"
#include "ADC_cfg.h"

/* Section : Macro Declarations */
#define ADC_PRE_MASK				0b11111000
#define ADC_CH_MASK				    0b11100000

#define ADMUX				*((volatile uint8*)0x27)		
#define ADMUX_REFS1         7							
#define ADMUX_REFS0         6							
#define ADMUX_ADLAR         5		

#define ADSAR				*((volatile uint8*)0x26)		
#define ADSAR_ADEN			7							
#define ADSAR_ADSC			6                         
#define ADSAR_ADATE		    5                           
#define ADSAR_ADIF			4                        
#define ADSAR_ADIE			3                           
#define ADSAR_ADPS2		    2                           
#define ADSAR_ADPS1		    1                           
#define ADSAR_ADPS0		    0                          

#define ADCH				*((volatile uint8*)0x25)		
#define ADCL				*((volatile uint8*)0x24)		
#define ADC_DATA_RE 		*((volatile uint16*)0x24)		


#define SFIOR  *((volatile uint8 *)0x50)
#define SFIOR_ADTS2			7                          
#define SFIOR_ADTS1	     	6                          
#define SFIOR_ADTS0		    5                          
#define SINGLE_CHANNEL_ASYNCH 0
#define CHAIN_CHANNEL_ASYNCH  1

#define ADC_DISABLE             0
#define ADC_ENABLE              1

#define INT_DISABLE             0
#define INT_ENABLE              1

#define AREF                    0
#define AVCC                    1
#define INTERNAL_2_56           3


#define RIGHT_ADJUSTMENT        0
#define LEFT_ADJUSTMENT         1

#define ADC_CHANNEL0            0
#define ADC_CHANNEL1            1
#define ADC_CHANNEL2            2
#define ADC_CHANNEL3            3
#define ADC_CHANNEL4            4
#define ADC_CHANNEL5            5
#define ADC_CHANNEL6            6
#define ADC_CHANNEL7            7

#define ADC_SINGLE_CONVERSION   0
#define ADC_FREE_RUNNING        1
#define ADC_ANALOG_COMPARATOR   2
#define ADC_EXTI0               3
#define ADC_TIM0_CTC            4
#define ADC_TIM0_OVF            5
#define ADC_TIM1_CTC_CHANNEL_B  6
#define ADC_TIM1_OVF            7
#define ADC_TIM1_ICU            8


#define ADC_PRE_2               0
#define ADC_PRE_4               2
#define ADC_PRE_8               3
#define ADC_PRE_16              4
#define ADC_PRE_32              5
#define ADC_PRE_64              6
#define ADC_PRE_128             7

/* Section : Data Type Declarations */
typedef struct{
    uint8 *Channel;
    uint16 *Result;
    uint8 Size;
    void (*NotificationFunc)(void);
}Chain_t;

/* Section : Function Declarations */
void ADC_voidInit(void);
uint8 ADC_u8GetResultSync(uint8 Copy_u8Channel, uint16 *Copy_pu16Result);
uint8 ADC_u8StartConversionAsynch(uint8 Copy_u8Channel, uint16 *Copy_pu16Reading, void (*Copy_pvNotificationFunc)(void));
uint8 ADC_u8StartChainAsynch(Chain_t *Copy_Chain);
void ADC_voidEnable(void);
void ADC_voidDisable(void);
void ADC_voidInterruptEnable(void);
void ADC_voidInterruptDisable(void);
uint8 ADC_u8SetPrescaler(uint8 Copy_u8Prescaler);
uint8 ADC_u8SetChannel(uint8 Copy_u8Channel);
void ADC_voidSetRefranceVoltage(uint8 Copy_u8RefranceVoltage);
void ADC_voidSetAdjustResult(uint8 Copy_u8AdjustResult);
uint16 ADC_u16GetResult(uint8 Copy_u8AdjustResult);
/* Section : Macro Functions Declarations */

#endif	/* ADC_H */


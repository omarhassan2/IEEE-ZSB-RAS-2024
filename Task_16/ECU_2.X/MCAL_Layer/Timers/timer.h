/* 
 * File:   timer.h
 * Author: Omar Hassan
 *
 * Created on August 2, 2024, 9:17 PM
 */

#ifndef TIMER_H
#define	TIMER_H

/* Section : Includes */

/* Section : Macro Declarations */
#define TIMER0_OVF_VECTOR_ID		11
#define TIMER0_CTC_VECTOR_ID		10

#define TIMER1_OVF_VECTOR_ID		9
#define TIMER1_CTCB_VECTOR_ID		8
#define TIMER1_CTCA_VECTOR_ID		7
#define TIMER1_ICU_VECTOR_ID		6

#define TIMER2_OVF_VECTOR_ID		5
#define TIMER2_CTC_VECTOR_ID		4

/* Section : Macro Functions Declarations */

/* Section : Data Type Declarations */

/* Section : Function Declarations */
void TIMER0_voidInit(void) ;
void TIMER0_voidSetPreload (uint8 Copy_u8Preload) ;
void TIMER0_voidSetCTC (uint8 Copy_u8CTC) ;
uint8 TIMER0_u8GetTimerCounterValue (void) ;

void TIMER1_voidInit(void) ;
void TIMER1_voidSetPreload (uint16 Copy_u16Preload) ;
void TIMER1_voidSetCTCA (uint16 Copy_u16CTCA) ;
void TIMER1_voidSetCTCB (uint16 Copy_u16CTCB) ;
void TIMER1_voidSetICR1 (uint16 Copy_u16ICR1) ;
uint16 TIMER1_u16GetTimerCounterValue (void) ;

void TIMER2_voidInit(void) ;
void TIMER2_voidSetPreload (uint8 Copy_u8Preload) ;
void TIMER2_voidSetCTC (uint8 Copy_u8CTC) ;
uint8 TIMER2_u8GetTimerCounterValue (void) ;

void TIMER_voidICUInitEnable(void);
uint8 TIMER_voidICUSetTriggerEdge(uint8 Copy_u8Edge);
void TIMER_voidICUEnableInterrupt(void);
void TIMER_voidICUDisableInterrupt(void);
uint16 TIMER_u16GetICR(void);

void TIMER_voidSetPWM(uint16 Copy_u16CompareValue);
uint8 TIMER_u8GetPWMOnPeriod   (uint16 * Copy_pu16OnPeriod);
uint8 TIMER_u8GetPWMTotalPeriod(uint32 * Copy_pu32TotalPeriod);
uint8 TIMER_u8GetPWMDutyCycle  (uint8  * Copy_pu8DutyCycle);
void TIMER_voidWDTSleep(void);
void TIMER_voidWDTEnable (void);
void TIMER_voidWDTDisable(void);

uint8 TIMER_u8SetCallBack(void (*Copy_pvCallBackFunc)(void) , uint8 Copy_u8VectorID) ;


#endif	/* TIMER_H */


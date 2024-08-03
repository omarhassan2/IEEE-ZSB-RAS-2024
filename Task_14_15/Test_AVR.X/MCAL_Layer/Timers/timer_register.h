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

/* Section : Macro Functions Declarations */

/* Section : Data Type Declarations */
#define SREG            *((volatile uint8 *)0x5F)
#define TIMSK			*((volatile uint8*)0X59)
#define TIFR			*((volatile uint8*)0X58)

	/*---------------- Timer0 ----------------*/
#define TCCR0			*((volatile uint8*)0X53)
#define TCNT0			*((volatile uint8*)0X52)
#define OCR0			*((volatile uint8*)0X5C)

	/*---------------- Timer1 ----------------*/
#define TCCR1A			*((volatile uint8*)0X4F)
#define TCCR1B			*((volatile uint8*)0X4E)
#define TCNT1H          *((volatile uint8 *)(0x4D))
#define TCNT1L          *((volatile uint8 *)(0x4C))
#define TCNT1			*((volatile uint16*)0X4C)    /* uint16 for HIGH(TCNT1H) & LOW(TCNT1L) */
#define OCR1AL          *((volatile uint8 *)(0x4A))
#define OCR1AH          *((volatile uint8 *)(0x4B))
#define OCR1A			*((volatile uint16*)0X4A)
#define OCR1BL          *((volatile uint8 *)(0x48))
#define OCR1BH          *((volatile uint8 *)(0x49))
#define OCR1B			*((volatile uint16*)0X48)
#define ICR1H           *((volatile uint8 *)(0x47))
#define ICR1L           *((volatile uint8 *)(0x46))
#define ICR1			*((volatile uint16*)0X46)

	/*---------------- Timer2 ----------------*/
#define TCCR2			*((volatile uint8*)0X45)
#define TCNT2			*((volatile uint8*)0X44)
#define TCNT2			*((volatile uint8*)0X44)
#define OCR2			*((volatile uint8*)0X43)

#define WDTCR           *((volatile uint8 *)(0x41))

/* Section : Function Declarations */

#endif	/* TIMER_H */


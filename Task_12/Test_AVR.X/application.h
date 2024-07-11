/* 
 * File:   application.h
 * Author: Omar Hassan
 *
 * Created on June 26, 2024, 3:34 PM
 */

#ifndef APPLICATION_H
#define	APPLICATION_H

/* Section : Includes */
#include "ECU_Layer/ecu_layer_init.h"
#include "ECU_Layer/BUTTON/ecu_button.h"
#include "MCAL_Layer/Interrupts/EXTI/EXTI.h"
#include <avr/interrupt.h>

/* Section : Macro Declarations */
#define F_CPU 1000000UL

#define EXTI_INT_0  0
#define EXTI_INT_1  1
#define EXTI_INT_2  2

#define DELAY_LCD   50

/* Section : Macro Functions Declarations */

/* Section : Data Type Declarations */
extern chr_lcd_4bit_t lcd1;
extern keypad_t keypad1;

/* Section : Function Declarations */
void application_initialize(void);
void reset_ISR(void);
void charing(uint8 row);
void enableGlobalInterrupt(void);

#endif	/* APPLICATION_H */


/* 
 * File:   EXTI.h
 * Author: Omar Hassan
 *
 * Created on July 10, 2024, 12:30 AM
 */

#ifndef EXTI_H
#define	EXTI_H

/* Section : Includes */
#include "../../mcal_std_types.h"
#include "../../bit_math.h"
#include "EXTI_cfg.h"

/* Section : Macro Declarations */
#define EXTI_CONFIGURATION      EXTI_CONFIG_ENABLE

#define MCUCR_REG   HWREG(0x55)     // MCU Control Register for Edge Register[EXTI0,EXTI1]
#define MCUCSR_REG  HWREG(0x54)     // MCU Control and Status Register for Edge Register[EXTI2]
#define GICR_REG    HWREG(0x5B)     // General Interrupt Control Register
#define GIFR_REG    HWREG(0x5A)     // General Interrupt Flag Register

#define EXTI_LINE0   6 // Bit 6 in GICR_REG & GIFR_REG = INT0
#define EXTI_LINE1   7 // Bit 7 in GICR_REG & GIFR_REG = INT1
#define EXTI_LINE2   5 // Bit 5 in GICR_REG & GIFR_REG = INT2

#define EXTI_FALLING_EDGE  0
#define EXTI_RISING_EDGE   1
#define EXTI_LOW_LEVEL     2
#define EXTI_ON_CHANGE     3

#define EXTI_LINE   EXTI_LINE0
#define EXTI_SENSE_MODE  EXTI_FALLING_EDGE

/* Section : Macro Functions Declarations */

/* Section : Data Type Declarations */

/* Section : Function Declarations */
void EXTI_voidInit(void);
void EXTI_voidSetSignalLatch(uint8 Copy_u8SenseMode, uint8 Copy_u8Line);
Std_ReturnType EXTI_voidDisableInterrupt(uint8 Copy_u8Line);
Std_ReturnType EXTI_voidEnableInterrupt(uint8 Copy_u8Line);
void EXTI_voidClearFlag(uint8 Copy_u8Line);
void EXTI_voidSetCallBack(void (*Copy_pvoidCallBack)(void), uint8 Copy_u8EXTILine);

#endif	/* EXTI_H */


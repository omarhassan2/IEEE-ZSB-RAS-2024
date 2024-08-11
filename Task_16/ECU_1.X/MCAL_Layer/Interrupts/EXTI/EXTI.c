/* 
 * File:   EXTI.c
 * Author: Omar Hassan
 *
 * Created on July 10, 2024, 12:30 AM
 */

#include "EXTI.h"

void (*EXTI_CallBack[3]) (void) = {NULL};

/**
 * @breif set the Sense Control for the EXTI Lines
 */
void EXTI_voidInit(void) {
    #ifdef EXTI_LINE
        #if (EXTI_LINE == EXTI_LINE1)
            #if EXTI_SENSE_MODE == EXTI_LOW_LEVEL
                CLEAR_BIT(MCUCR_REG, 2);
                CLEAR_BIT(MCUCR_REG, 3);
            #elif EXTI_SENSE_MODE == EXTI_ON_CHANGE
                SET_BIT(MCUCR_REG, 2);
                CLEAR_BIT(MCUCR_REG, 3);
            #elif EXTI_SENSE_MODE == EXTI_FALLING_EDGE
                CLEAR_BIT(MCUCR_REG, 2);
                SET_BIT(MCUCR_REG, 3);
            #elif EXTI_SENSE_MODE == EXTI_RISING_EDGE
                SET_BIT(MCUCR_REG, 2);
                SET_BIT(MCUCR_REG, 3);
            #endif
        
        #elif (EXTI_LINE == EXTI_LINE0)
            #if EXTI_SENSE_MODE == EXTI_LOW_LEVEL
                CLEAR_BIT(MCUCR_REG, 0);
                CLEAR_BIT(MCUCR_REG, 1);
            #elif EXTI_SENSE_MODE == EXTI_ON_CHANGE
                SET_BIT(MCUCR_REG, 0);
                CLEAR_BIT(MCUCR_REG, 1);
            #elif EXTI_SENSE_MODE == EXTI_FALLING_EDGE
                CLEAR_BIT(MCUCR_REG, 0);
                SET_BIT(MCUCR_REG, 1);
            #elif EXTI_SENSE_MODE == EXTI_RISING_EDGE
                SET_BIT(MCUCR_REG, 0);
                SET_BIT(MCUCR_REG, 1);
            #endif

        #elif (EXTI_LINE == EXTI_LINE2)
            #if EXTI_SENSE_MODE == EXTI_FALLING_EDGE
                CLEAR_BIT(MCUCSR_REG, 6);
            #elif EXTI_SENSE_MODE == EXTI_RISING_EDGE
                SET_BIT(MCUCSR_REG, 6);
            #endif
            #else
            #error "Wrong INT0_SENSE configuration option"
        #endif
    #endif
}

void EXTI_voidSetSignalLatch(uint8 Copy_u8SenseMode, uint8 Copy_u8Line) {
    /* For EXTI0 & EXTI1 */
    if (Copy_u8Line >= EXTI_LINE0 && Copy_u8Line <= EXTI_LINE1) {
        Copy_u8Line = (6 - Copy_u8Line) * -2;
        switch (Copy_u8SenseMode) {
                /* INT Sence Control (Trigger) For EXTI0 & EXTI1   */
            case EXTI_LOW_LEVEL: CLEAR_BIT(MCUCR_REG, Copy_u8Line);
                CLEAR_BIT(MCUCR_REG, Copy_u8Line + 1);
                break;
            case EXTI_ON_CHANGE: SET_BIT(MCUCR_REG, Copy_u8Line);
                CLEAR_BIT(MCUCR_REG, Copy_u8Line + 1);
                break;
            case EXTI_FALLING_EDGE: CLEAR_BIT(MCUCR_REG, Copy_u8Line);
                SET_BIT(MCUCR_REG, Copy_u8Line + 1);
                break;
            case EXTI_RISING_EDGE: SET_BIT(MCUCR_REG, Copy_u8Line);
                SET_BIT(MCUCR_REG, Copy_u8Line + 1);
                break;
        }
    }        
    else{ /* For EXTI2 */
        switch(Copy_u8SenseMode){
            /* INT Sence Control (Trigger) For EXTI0 & EXTI1 */
            case EXTI_FALLING_EDGE: CLEAR_BIT(MCUCSR_REG, 6);
                break;
            case EXTI_RISING_EDGE: SET_BIT(MCUCSR_REG, 6);
                break;
        }
    }
}

Std_ReturnType EXTI_voidDisableInterrupt(uint8 Copy_u8Line) {
    Std_ReturnType Local_u8ErrorState = E_OK;
    /* Check [5:7] */
    if((Copy_u8Line > EXTI_LINE2) && (Copy_u8Line < EXTI_LINE1)){
        /* Clear The Required BIT */
        CLEAR_BIT(GICR_REG, Copy_u8Line);
    } 
    else{
        Local_u8ErrorState = E_NOT_OK;
    }
    return Local_u8ErrorState;
}

Std_ReturnType EXTI_voidEnableInterrupt(uint8 Copy_u8Line) {
    Std_ReturnType Local_u8ErrorState = E_OK;
    /* Check [5:7] */
    if ((Copy_u8Line > EXTI_LINE2) && (Copy_u8Line < EXTI_LINE1)){
        /* Set The Required BIT */
        SET_BIT(GICR_REG, Copy_u8Line);
    } 
    else{
        Local_u8ErrorState = E_NOT_OK;
    }
    return Local_u8ErrorState;
}

void EXTI_voidClearFlag(uint8 Copy_u8Line) {
    SET_BIT(GIFR_REG, Copy_u8Line);
}

uint8 EXTI_u8GetFlag(uint8 Copy_u8Line) {
    return READ_BIT(GIFR_REG, Copy_u8Line);
}

void EXTI_voidSetCallBack(void (*Copy_pvoidCallBack)(void), uint8 Copy_u8EXTILine) {
    if (Copy_pvoidCallBack != NULL){
        EXTI_CallBack[Copy_u8EXTILine] = Copy_pvoidCallBack;
    }
}

/* ISR for INT0 */
void __vector_2(void) __attribute__((signal));
void __vector_2(void) {
    if (EXTI_CallBack[0] != NULL){
        EXTI_CallBack[0]();
        EXTI_voidClearFlag(EXTI_LINE0);
    }
}

///* ISR for INT1 */
//void __vector_2(void) __attribute__((signal));
//void __vector_2(void) {
//    if (EXTI_CallBack[1] != NULL) {
//        EXTI_CallBack[1]();
//        EXTI_voidClearFlag(EXTI_LINE1);
//    }
//}

///* ISR for INT2 */
//void __vector_3(void) __attribute__((signal));
//void __vector_3(void) {
//    if (EXTI_CallBack[2] != NULL){
//        EXTI_CallBack[2]();
//        EXTI_voidClearFlag(EXTI_LINE2);
//    }
//}
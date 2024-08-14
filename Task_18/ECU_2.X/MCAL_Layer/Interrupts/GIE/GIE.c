/* 
 * File:   GIE.c
 * Author: Omar Hassan
 *
 * Created on July 17, 2024, 8:56 PM
 */

#include "GIE.h"

void GIE_VoidEnable(void){
    SET_BIT(SREG, SREG_I);
}

void GIE_VoidDisable(void){
    CLEAR_BIT(SREG, SREG_I);
}

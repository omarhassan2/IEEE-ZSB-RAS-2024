/* 
 * File:   application.c
 * Author: Omar Hassan
 *
 * Created on June 26, 2024, 3:34 PM
 */

#include "application.h"

uint8 timer0_counter = 0;
uint8 timer1_counter = 0;
uint8 timer2_counter = 0;

void turn_led0(){
    led_toggle(&led_0);
}

void turn_led1(){
    led_toggle(&led_1);
}

void turn_led2(){
    led_toggle(&led_2);
}

int main() {  
    Std_ReturnType ret_status = E_OK;
    application_initialize();
    
    TIMER_u8SetCallBack(turn_led0, TIMER0_OVF_VECTOR_ID);
    TIMER_u8SetCallBack(turn_led1, TIMER1_OVF_VECTOR_ID);
    TIMER_u8SetCallBack(turn_led2, TIMER2_OVF_VECTOR_ID);
    
    while(1){
        
    }
 
    return (EXIT_SUCCESS);
}

void application_initialize(void){
    ecu_layer_initialize();
    TIMER0_voidInit();
    TIMER1_voidInit();
    TIMER2_voidInit();
    GIE_VoidEnable();
}
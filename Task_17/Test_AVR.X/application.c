/* 
 * File:   application.c
 * Author: Omar Hassan
 *
 * Created on June 26, 2024, 3:34 PM
 */

#include "application.h"

uint16 Pot_value = 0;
uint8 leds_on_counter = 0;

led_t *leds[] = {&led_1,&led_2,&led_3,&led_4,&led_5,&led_6,&led_7,&led_8};

int main() {  
    Std_ReturnType ret_status = E_OK;
    application_initialize();
    
    while(1){
        
        ret_status = ADC_u8GetResultSync(ADC_CHANNEL0, &Pot_value);
        _delay_ms(100);
        
        if (Pot_value < 128) {
            leds_on_counter = 0;
        } else if (Pot_value < 256) {
            leds_on_counter = 1;
        } else if (Pot_value < 384) {
            leds_on_counter = 2;
        } else if (Pot_value < 512) {
            leds_on_counter = 3;
        } else if (Pot_value < 640) {
            leds_on_counter = 4;
        } else if (Pot_value < 768) {
            leds_on_counter = 5;
        } else if (Pot_value < 896) {
            leds_on_counter = 6;
        } else if (Pot_value < 1024) {
            leds_on_counter = 7;
        } else {
            leds_on_counter = 8;
        }
        
        
        for (int i = 0; i < leds_on_counter; i++) {
            if (i < leds_on_counter) {
                led_turn_on(leds[i]);
            } else {
                led_turn_off(leds[i]);
            }
        }
        
    }
 
    return (EXIT_SUCCESS);
}

void application_initialize(void){
    ecu_layer_initialize();
    ADC_voidInit();
}
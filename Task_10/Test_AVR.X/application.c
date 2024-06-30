/* 
 * File:   application.c
 * Author: Omar Hassan
 *
 * Created on June 26, 2024, 3:34 PM
 */

#include "application.h"

uint8 seconds = 0;

int main() {  
    Std_ReturnType ret_status = E_OK;
    application_initialize();
    
    while(1){
        for(seconds = 0; seconds < RED_TIME; seconds++){
            turn_led_for_time(&red_led, seconds);
        }
        led_turn_off(&red_led);
        for(seconds = 0; seconds < YELLOW_TIME; seconds++){
            turn_led_for_time(&yellow_led, seconds);
        }
        led_turn_off(&yellow_led);
        for(seconds = 0; seconds < GREEN_TIME; seconds++){
            turn_led_for_time(&green_led, seconds);
        }
        led_turn_off(&green_led);
    }
 
    return (EXIT_SUCCESS);
}

void application_initialize(void){
    ecu_layer_initialize();
}

void turn_led_for_time(led_t *led, uint8 time){
    uint8 l_counter = 0;
    for(l_counter = 0; l_counter < 50;l_counter++){
            led_turn_on(led);
            gpio_port_direction_initialize(PORTC_INDEX, 0x1F);
            gpio_port_write_logic(PORTC_INDEX, time%10);
            _delay_ms(10);
            gpio_port_direction_initialize(PORTC_INDEX, 0x2F);
            gpio_port_write_logic(PORTC_INDEX, time/10); 
            _delay_ms(10);
    }
}


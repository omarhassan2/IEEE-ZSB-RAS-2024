/* 
 * File:   ecu_layer_init.c
 * Author: Omar Hassan
 *
 * Created on June 19, 2024, 7:46 PM
 */

#include "ecu_layer_init.h"

led_t red_led = {
    .port_name = PORTD_INDEX,
    .pin = GPIO_PIN2,
    .led_status = LED_OFF
};

led_t yellow_led = {
    .port_name = PORTD_INDEX,
    .pin = GPIO_PIN1,
    .led_status = LED_OFF
};

led_t green_led = {
    .port_name = PORTD_INDEX,
    .pin = GPIO_PIN0,
    .led_status = LED_OFF
};

void ecu_layer_initialize(void){
    Std_ReturnType ret_status_ecu_init = E_OK;
    ret_status_ecu_init = led_initialize(&red_led);
    ret_status_ecu_init = led_initialize(&yellow_led);
    ret_status_ecu_init = led_initialize(&green_led);
}
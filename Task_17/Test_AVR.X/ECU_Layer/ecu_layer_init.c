/* 
 * File:   ecu_layer_init.c
 * Author: Omar Hassan
 *
 * Created on June 19, 2024, 7:46 PM
 */

#include "ecu_layer_init.h"

led_t led_0 = {
    .port_name = PORTC_INDEX,
    .pin = GPIO_PIN6,
    .led_status = LED_OFF
};
led_t led_1 = {
    .port_name = PORTC_INDEX,
    .pin = GPIO_PIN7,
    .led_status = LED_OFF
};
led_t led_2 = {
    .port_name = PORTD_INDEX,
    .pin = GPIO_PIN0,
    .led_status = LED_OFF
};

void ecu_layer_initialize(void){
    Std_ReturnType ret_status_ecu_init = E_OK;
    ret_status_ecu_init = led_initialize(&led_0);
    ret_status_ecu_init = led_initialize(&led_1);
    ret_status_ecu_init = led_initialize(&led_2);
}
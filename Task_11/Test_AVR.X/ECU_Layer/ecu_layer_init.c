/* 
 * File:   ecu_layer_init.c
 * Author: Omar Hassan
 *
 * Created on June 19, 2024, 7:46 PM
 */

#include "ecu_layer_init.h"

button_t btn = {
    .button_pin.port = PORTC_INDEX,
    .button_pin.pin = GPIO_PIN0,
    .button_pin.direction = GPIO_DIRECTION_INPUT,
    .button_pin.logic = GPIO_LOW,
    .button_connection = BUTTON_ACTIVE_HIGH,
    .button_state = BUTTON_RELEASED
};
dc_motor_t motor_1 = {
    .dc_motor_pin[0].port = PORTC_INDEX,
    .dc_motor_pin[0].pin = GPIO_PIN1,
    .dc_motor_pin[0].logic = GPIO_LOW,
    .dc_motor_pin[0].direction = GPIO_DIRECTION_OUTPUT,
    .dc_motor_pin[1].port = PORTC_INDEX,
    .dc_motor_pin[1].pin = GPIO_PIN2,
    .dc_motor_pin[1].logic = GPIO_LOW,
    .dc_motor_pin[1].direction = GPIO_DIRECTION_OUTPUT
};
dc_motor_t motor_2 = {
    .dc_motor_pin[0].port = PORTC_INDEX,
    .dc_motor_pin[0].pin = GPIO_PIN3,
    .dc_motor_pin[0].logic = GPIO_LOW,
    .dc_motor_pin[0].direction = GPIO_DIRECTION_OUTPUT,
    .dc_motor_pin[1].port = PORTC_INDEX,
    .dc_motor_pin[1].pin = GPIO_PIN4,
    .dc_motor_pin[1].logic = GPIO_LOW,
    .dc_motor_pin[1].direction = GPIO_DIRECTION_OUTPUT
};

void ecu_layer_initialize(void){
    Std_ReturnType ret_status_ecu_init = E_OK;
    ret_status_ecu_init = button_initialize(&btn);
    ret_status_ecu_init = dc_motor_initialize(&motor_1);
    ret_status_ecu_init = dc_motor_initialize(&motor_2);
}
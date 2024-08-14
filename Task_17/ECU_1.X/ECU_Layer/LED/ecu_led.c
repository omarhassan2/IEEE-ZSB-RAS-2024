/* 
 * File:   ecu_led.c
 * Author: Omar Hassan
 *
 * Created on February 7, 2024, 5:08 PM
 */

#include "ecu_led.h"

/**
 * @brief Initialize the assigned pin to be OUTPUT and turn led off.
 * @param <led> Pointer to the led module configurations
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (LED_CONFIGURATION == LED_CONFIG_ENABLE)
Std_ReturnType led_initialize(const led_t *led){
    Std_ReturnType ret_status = E_OK;
    if(NULL == led){
        ret_status = E_NOT_OK;
    }
    else{
        pin_config_t pin_obj = {
        .port = led->port_name, .pin = led->pin, .logic = led->led_status,
        .direction = GPIO_DIRECTION_OUTPUT
        };
        ret_status = gpio_pin_initialize(&pin_obj);
    }
    return ret_status;
}
#endif

/**
 * @brief Turn the led on
 * @param <led> Pointer to the led module configurations
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (LED_CONFIGURATION == LED_CONFIG_ENABLE)
Std_ReturnType led_turn_on(const led_t *led){
    Std_ReturnType ret_status = E_OK;
    if(NULL == led){
        ret_status = E_NOT_OK;
    }
    else{
        pin_config_t pin_obj = {
        .port = led->port_name, .pin = led->pin, .logic = led->led_status,
        .direction = GPIO_DIRECTION_OUTPUT
        };
        ret_status = gpio_pin_write_logic(&pin_obj, GPIO_HIGH);
    }
    return ret_status;
}
#endif

/**
 * @brief Turn the led off
 * @param <led> Pointer to the led module configurations
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (LED_CONFIGURATION == LED_CONFIG_ENABLE)
Std_ReturnType led_turn_off(const led_t *led){
    Std_ReturnType ret_status = E_OK;
    if(NULL == led){
        ret_status = E_NOT_OK;
    }
    else{
       pin_config_t pin_obj = {
        .port = led->port_name, .pin = led->pin, .logic = led->led_status,
        .direction = GPIO_DIRECTION_OUTPUT
        }; 
       ret_status = gpio_pin_write_logic(&pin_obj, GPIO_LOW);
    }
    return ret_status;
}
#endif

/**
 * @brief Toggle the led
 * @param <led> Pointer to the led module configurations
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (LED_CONFIGURATION == LED_CONFIG_ENABLE)
Std_ReturnType led_toggle(const led_t *led){
    Std_ReturnType ret_status = E_OK;
    if(NULL == led){
        ret_status = E_NOT_OK;
    }
    else{
       pin_config_t pin_obj = {
        .port = led->port_name, .pin = led->pin, .logic = led->led_status,
        .direction = GPIO_DIRECTION_OUTPUT
        };
       ret_status = gpio_pin_toggle_logic(&pin_obj);
    }
    return ret_status;
}
#endif
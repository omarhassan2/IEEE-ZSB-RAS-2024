/* 
 * File:   ecu_button.c
 * Author: Omar Hassan
 *
 * Created on June 16, 2024, 12:38 PM
 */

#include "ecu_button.h"

/**
 * @brief Initialize the assigned pin to be INPUT
 * @param <btn> Pointer to the button module configurations
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (BUTTON_CONFIGURATION == BUTTON_CONFIG_ENABLE)
Std_ReturnType button_initialize(const button_t *btn){
    Std_ReturnType ret_status = E_OK;
    if(NULL == btn){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = gpio_pin_direction_initialize(&(btn->button_pin));
    }
    return ret_status;
}
#endif

/**
 * @brief Read the state of the button
 * @param <btn> Pointer to the button module configurations
 * @param <btn_state>
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (BUTTON_CONFIGURATION == BUTTON_CONFIG_ENABLE)
Std_ReturnType button_read_state(const button_t *btn, button_state_t *btn_state){
    Std_ReturnType ret_status = E_OK;
    logic_t pin_logic_status = GPIO_LOW;
    if((NULL == btn) || (NULL == btn_state)){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = gpio_pin_read_logic(&(btn->button_pin), &pin_logic_status);
        if(BUTTON_ACTIVE_HIGH == btn->button_connection){
            if(GPIO_HIGH == pin_logic_status){
                *btn_state = BUTTON_PRESSED;
            }
            else{
                *btn_state = BUTTON_RELEASED;
            }
        }
        else if(BUTTON_ACTIVE_LOW == btn->button_connection){
            if(GPIO_HIGH == pin_logic_status){
                *btn_state = BUTTON_RELEASED;
            }
            else{
                *btn_state = BUTTON_PRESSED;
            }
        }
        else{/* Nothing */}
    }
    return ret_status;
}
#endif

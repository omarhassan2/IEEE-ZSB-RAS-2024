/* 
 * File:   ecu_dc_motor.h
 * Author: Omar Hassan
 *
 * Created on June 17, 2024, 11:56 PM
 */

#include "ecu_dc_motor.h"

/**
 * @brief Initialize the assigned pins to be OUTPUT and make the motor at off status
 * @param <_dc_motor> Pointer to the motor configurations
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (DC_MOTOR_CONFIGURATION == DC_MOTOR_CONFIG_ENABLE)
Std_ReturnType dc_motor_initialize(const dc_motor_t *_dc_motor){
    Std_ReturnType ret_status = E_OK;
    if(NULL == _dc_motor){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = gpio_pin_initialize(&(_dc_motor->dc_motor_pin[DC_MOTOR_PIN_1]));
        ret_status = gpio_pin_initialize(&(_dc_motor->dc_motor_pin[DC_MOTOR_PIN_2]));
    }
    return ret_status;
}
#endif

/**
 * @brief Move the motor to right
 * @param <_dc_motor> Pointer to the motor configurations
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (DC_MOTOR_CONFIGURATION == DC_MOTOR_CONFIG_ENABLE)
Std_ReturnType dc_motor_move_right(const dc_motor_t *_dc_motor){
    Std_ReturnType ret_status = E_OK;
    if(NULL == _dc_motor){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = gpio_pin_write_logic(&(_dc_motor->dc_motor_pin[DC_MOTOR_PIN_1]) ,GPIO_HIGH);
        ret_status = gpio_pin_write_logic(&(_dc_motor->dc_motor_pin[DC_MOTOR_PIN_2]) ,GPIO_LOW);
    }
    return ret_status;
}
#endif

/**
 * @brief Move the motor to left
 * @param <_dc_motor> Pointer to the motor configurations
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (DC_MOTOR_CONFIGURATION == DC_MOTOR_CONFIG_ENABLE)
Std_ReturnType dc_motor_move_left(const dc_motor_t *_dc_motor){
    Std_ReturnType ret_status = E_OK;
    if(NULL == _dc_motor){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = gpio_pin_write_logic(&(_dc_motor->dc_motor_pin[DC_MOTOR_PIN_1]) ,GPIO_LOW);
        ret_status = gpio_pin_write_logic(&(_dc_motor->dc_motor_pin[DC_MOTOR_PIN_2]) ,GPIO_HIGH);
    }
    return ret_status;
}
#endif

/**
 * @brief Stop the motor by hard break
 * @param <_dc_motor> Pointer to the motor configurations
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (DC_MOTOR_CONFIGURATION == DC_MOTOR_CONFIG_ENABLE)
Std_ReturnType dc_motor_stop(const dc_motor_t *_dc_motor){
    Std_ReturnType ret_status = E_OK;
    if(NULL == _dc_motor){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = gpio_pin_write_logic(&(_dc_motor->dc_motor_pin[DC_MOTOR_PIN_1]) ,GPIO_LOW);
        ret_status = gpio_pin_write_logic(&(_dc_motor->dc_motor_pin[DC_MOTOR_PIN_2]) ,GPIO_LOW);
    }
    return ret_status;
}
#endif
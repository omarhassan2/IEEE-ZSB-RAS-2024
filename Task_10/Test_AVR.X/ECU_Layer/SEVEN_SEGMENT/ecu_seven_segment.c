/* 
 * File:   ecu_seven_segment.c
 * Author: Omar Hassan
 *
 * Created on June 18, 2024, 4:51 PM
 */

#include "ecu_seven_segment.h"

/**
 * @brief Initialize the assigned pins to be OUTPUT and seven_segment display zero
 * @param <_seg> Pointer to the seven_segment configurations
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (SEVEN_SEGMENT_CONFIGURATION == SEVEN_SEGMENT_CONFIG_ENABLE)
Std_ReturnType seven_segment_initialize(const segment_t *_seg){
    Std_ReturnType ret_status = E_OK;
    if(NULL == _seg){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = gpio_pin_initialize(&(_seg->segment_pins[SEGMENT_PIN0]));
        ret_status = gpio_pin_initialize(&(_seg->segment_pins[SEGMENT_PIN1]));
        ret_status = gpio_pin_initialize(&(_seg->segment_pins[SEGMENT_PIN2]));
        ret_status = gpio_pin_initialize(&(_seg->segment_pins[SEGMENT_PIN3]));
    }
    return ret_status;
}
#endif

/**
 * @brief Write a number to be displayed on the seven_segment
 * @param <_seg> Pointer to the seven_segment configurations
 * @param <number> The number will the seven_segment display
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (SEVEN_SEGMENT_CONFIGURATION == SEVEN_SEGMENT_CONFIG_ENABLE)
Std_ReturnType seven_segment_write_number(const segment_t *_seg, uint8 number){
    Std_ReturnType ret_status = E_OK;
    if((NULL == _seg) || (number > 9)){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = gpio_pin_write_logic(&(_seg->segment_pins[SEGMENT_PIN0]), (number>>SEGMENT_PIN0)&0x01);
        ret_status = gpio_pin_write_logic(&(_seg->segment_pins[SEGMENT_PIN1]), (number>>SEGMENT_PIN1)&0x01);
        ret_status = gpio_pin_write_logic(&(_seg->segment_pins[SEGMENT_PIN2]), (number>>SEGMENT_PIN2)&0x01);
        ret_status = gpio_pin_write_logic(&(_seg->segment_pins[SEGMENT_PIN3]), (number>>SEGMENT_PIN3)&0x01);
    }
    return ret_status;
}
#endif
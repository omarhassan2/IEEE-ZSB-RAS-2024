/* 
 * File:   ecu_keypad.c
 * Author: Omar Hassan
 *
 * Created on June 19, 2024, 5:56 PM
 */

#include "ecu_keypad.h"

static const uint8 keypad_values[KEYPAD_ROWS][KEYPAD_COLUMNS] = {
    {'7', '8', '9', '/'},
    {'4', '5', '6', '*'},
    {'1', '2', '3', '-'},
    {'#', '0', '=', '+'}
};

/**
 * @brief
 * @param <_keypad_obj>
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (KEYPAD_CONFIGURATION == KEYPAD_CONFIG_ENABLE)
Std_ReturnType keypad_initialize(const keypad_t *_keypad_obj){
    Std_ReturnType ret_status = E_OK;
    uint8 rows_counter = ZERO_INIT, columns_counter = ZERO_INIT;
    if(NULL == _keypad_obj){
        ret_status = E_NOT_OK;
    }
    else{
        for(rows_counter = ZERO_INIT; rows_counter<KEYPAD_ROWS; rows_counter++){
            ret_status = gpio_pin_initialize(&(_keypad_obj->keypad_row_pins[rows_counter]));
        }
        for(columns_counter = ZERO_INIT; columns_counter<KEYPAD_COLUMNS; columns_counter++){
            ret_status = gpio_pin_initialize(&(_keypad_obj->keypad_columns_pins[columns_counter]));
        }
    }
    return ret_status;
}
#endif

/**
 * @brief
 * @param <_keypad_obj>
 * @param <value>
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (KEYPAD_CONFIGURATION == KEYPAD_CONFIG_ENABLE)
Std_ReturnType keypad_get_value(const keypad_t *_keypad_obj, uint8 *value){
    Std_ReturnType ret_status = E_OK;
    uint8 rows_counter = ZERO_INIT, columns_counter = ZERO_INIT ,counter = ZERO_INIT;
    logic_t column_logic = ZERO_INIT;
    if((NULL == _keypad_obj) || (NULL == value)){
        ret_status = E_NOT_OK;
    }
    else{
        for(rows_counter = ZERO_INIT; rows_counter<KEYPAD_ROWS; rows_counter++){
            for(counter = ZERO_INIT; counter<KEYPAD_ROWS; counter++){
                ret_status = gpio_pin_write_logic(&(_keypad_obj->keypad_row_pins[counter]), GPIO_LOW);
            }
            ret_status = gpio_pin_write_logic(&(_keypad_obj->keypad_row_pins[rows_counter]), GPIO_HIGH);
            for(columns_counter = ZERO_INIT; columns_counter<KEYPAD_COLUMNS; columns_counter++){
                ret_status = gpio_pin_read_logic(&(_keypad_obj->keypad_columns_pins[columns_counter]), &column_logic);
                if(GPIO_HIGH == column_logic){
                    *value = keypad_values[rows_counter][columns_counter];
                }
            }   
        }
    }
    return ret_status;
}
#endif
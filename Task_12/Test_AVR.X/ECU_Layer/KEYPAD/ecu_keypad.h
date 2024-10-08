/* 
 * File:   ecu_keypad.h
 * Author: Omar Hassan
 *
 * Created on June 19, 2024, 5:56 PM
 */

#ifndef ECU_KEYPAD_H
#define	ECU_KEYPAD_H

/* Section : Includes */
#include "ecu_keypad_cfg.h"
#include "../../MCAL_Layer/GPIO/hal_gpio.h"

/* Section : Macro Declarations */
#define KEYPAD_CONFIGURATION      KEYPAD_CONFIG_ENABLE

#define KEYPAD_ROWS     4
#define KEYPAD_COLUMNS  4

/* Section : Macro Functions Declarations */

/* Section : Data Type Declarations */
typedef struct{
    pin_config_t keypad_row_pins[KEYPAD_ROWS];
    pin_config_t keypad_columns_pins[KEYPAD_COLUMNS];
}keypad_t;

/* Section : Function Declarations */
Std_ReturnType keypad_initialize(const keypad_t *_keypad_obj);
Std_ReturnType keypad_get_value(const keypad_t *_keypad_obj, uint8 *value);

#endif	/* ECU_KEYPAD_H */


/* 
 * File:   ecu_layer_init.h
 * Author: Omar Hassan
 *
 * Created on June 19, 2024, 7:46 PM
 */

#ifndef ECU_LAYER_INIT_H
#define	ECU_LAYER_INIT_H

/* Section : Includes */
#include "../MCAL_Layer/GPIO/hal_gpio.h"
#include "../MCAL_Layer/Interrupts/GIE/GIE.h"
#include "../MCAL_Layer/I2C/i2c_interface.h"
#include "Chr_LCD/ecu_chr_lcd.h"

/* Section : Macro Declarations */

/* Section : Macro Functions Declarations */

/* Section : Data Type Declarations */

/* Section : Function Declarations */
void ecu_layer_initialize(void);

#endif	/* ECU_LAYER_INIT_H */


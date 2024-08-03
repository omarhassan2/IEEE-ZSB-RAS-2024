/* 
 * File:   application.h
 * Author: Omar Hassan
 *
 * Created on June 26, 2024, 3:34 PM
 */

#ifndef APPLICATION_H
#define	APPLICATION_H

/* Section : Includes */
#include "ECU_Layer/ecu_layer_init.h"

/* Section : Macro Declarations */

/* Section : Macro Functions Declarations */

/* Section : Data Type Declarations */
extern led_t led_1;
extern led_t led_2;
extern led_t led_3;
extern led_t led_4;
extern led_t led_5;
extern led_t led_6;
extern led_t led_7;
extern led_t led_8;

/* Section : Function Declarations */
void application_initialize(void);

#endif	/* APPLICATION_H */


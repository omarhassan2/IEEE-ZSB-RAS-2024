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
#define F_CPU 1000000UL

#define RED_TIME        15
#define YELLOW_TIME     5
#define GREEN_TIME      10

/* Section : Macro Functions Declarations */

/* Section : Data Type Declarations */
extern led_t red_led;
extern led_t yellow_led;
extern led_t green_led;
extern segment_t two_seg;

/* Section : Function Declarations */
void application_initialize(void);
void turn_led_for_time(led_t *led, uint8 time);

#endif	/* APPLICATION_H */


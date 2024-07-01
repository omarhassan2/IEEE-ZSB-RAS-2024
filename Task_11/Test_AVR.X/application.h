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

/* Section : Macro Functions Declarations */
#define GO_FORWARD     0
#define GO_BACK        1
#define TURN_LEFT      2
#define TURN_RIGHT     3
#define STOP           4

/* Section : Data Type Declarations */
extern button_t btn;
extern dc_motor_t motor_1;
extern dc_motor_t motor_2;

/* Section : Function Declarations */
void application_initialize(void);

#endif	/* APPLICATION_H */


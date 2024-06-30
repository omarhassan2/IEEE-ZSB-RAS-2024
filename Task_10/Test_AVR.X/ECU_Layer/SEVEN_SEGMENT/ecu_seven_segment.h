/* 
 * File:   ecu_seven_segment.h
 * Author: Omar Hassan
 *
 * Created on June 18, 2024, 4:51 PM
 */

#ifndef ECU_SEVEN_SEGMENT_H
#define	ECU_SEVEN_SEGMENT_H

/* Section : Includes */
#include "ecu_seven_segment_cfg.h"
#include "../../MCAL_Layer/GPIO/hal_gpio.h"

/* Section : Macro Declarations */
#define SEVEN_SEGMENT_CONFIGURATION      SEVEN_SEGMENT_CONFIG_ENABLE

#define SEGMENT_PIN0    0
#define SEGMENT_PIN1    1
#define SEGMENT_PIN2    2
#define SEGMENT_PIN3    3

/* Section : Macro Functions Declarations */

/* Section : Data Type Declarations */
typedef enum{
    SEGMENT_COMMON_ANODE,
    SEGMENT_COMMON_CATHODE
}segment_type_t;

typedef struct{
    pin_config_t segment_pins[4];
    segment_type_t segment_type;
}segment_t;

/* Section : Function Declarations */
Std_ReturnType seven_segment_initialize(const segment_t *_seg);
Std_ReturnType seven_segment_write_number(const segment_t *_seg, uint8 number);

#endif	/* ECU_SEVEN_SEGMENT_H */


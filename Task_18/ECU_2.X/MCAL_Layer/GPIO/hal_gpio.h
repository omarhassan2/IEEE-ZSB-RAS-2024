/* 
 * File:   hal_gpio.h
 * Author: Omar Hassan
 *
 * Created on February 7, 2024, 4:58 PM
 */

#ifndef HAL_GPIO_H
#define	HAL_GPIO_H

/* Section : Includes */
#include "../mcal_std_types.h"
#include "../bit_math.h"
#include "hal_gpio_cfg.h"

/* Section : Macro Declarations */
#define PORT_PIN_MAX_NUMBER    (8)
#define PORT_MAX_NUMBER        (4)

#define GPIO_PORT_PIN_CONFIGURATION  GPIO_CONFIG_ENABLE
#define GPIO_PORT_CONFIGURATION      GPIO_CONFIG_ENABLE

/* Section : Macro Functions Declarations */

/* Section : Data Type Declarations */
typedef enum{
    GPIO_LOW = 0,
    GPIO_HIGH
}logic_t;

typedef enum{
    GPIO_DIRECTION_OUTPUT = 0,
    GPIO_DIRECTION_INPUT
}direction_t;

typedef enum{
    GPIO_PIN0 = 0,
    GPIO_PIN1,
    GPIO_PIN2,
    GPIO_PIN3,
    GPIO_PIN4,
    GPIO_PIN5,
    GPIO_PIN6,
    GPIO_PIN7
}pin_index_t;

typedef enum{
    PORTA_INDEX = 0,
    PORTB_INDEX,
    PORTC_INDEX,
    PORTD_INDEX
}port_index_t;

typedef struct{
    uint8 port : 3;         /* @ref  port_index_t */
    uint8 pin  : 3;         /* @ref  pin_index_t */
    uint8 direction : 1;    /* @ref  direction_t */
    uint8 logic : 1;        /* @ref  logic_t */
}pin_config_t;

/* Section : Function Declarations */
Std_ReturnType gpio_pin_direction_initialize(const pin_config_t *_pin_config );
Std_ReturnType gpio_pin_get_direction_status(const pin_config_t *_pin_config, direction_t *direction_status);
Std_ReturnType gpio_pin_write_logic(const pin_config_t *_pin_config, logic_t logic);
Std_ReturnType gpio_pin_read_logic(const pin_config_t *_pin_config, logic_t *logic);
Std_ReturnType gpio_pin_toggle_logic(const pin_config_t *_pin_config);
Std_ReturnType gpio_pin_initialize(const pin_config_t *_pin_config );

Std_ReturnType gpio_port_direction_initialize(port_index_t port, uint8 direction);
Std_ReturnType gpio_port_get_direction_status(port_index_t port, uint8 *direction_status);
Std_ReturnType gpio_port_write_logic(port_index_t port, uint8 logic);
Std_ReturnType gpio_port_read_logic(port_index_t port, uint8 *logic);
Std_ReturnType gpio_port_toggle_logic(port_index_t port);


#endif	/* HAL_GPIO_H */

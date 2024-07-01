/* 
 * File:   hal_gpio.c
 * Author: Omar Hassan
 *
 * Created on February 7, 2024, 4:58 PM
 */

#include "hal_gpio.h"

volatile uint8 *data_direction_registers[] = {&DDRA, &DDRB, &DDRC, &DDRD}; 
volatile uint8 *port_registers[] = {&PORTA, &PORTB, &PORTC, &PORTD};
volatile uint8 *pin_registers[] = {&PINA, &PINB, &PINC, &PIND};


/**
 * @brief Initialize the direction of a specific GPIO pin @ref direction_t
 * @param <_pin_config> pointer to the configurations @ref pin_config_t
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (GPIO_PORT_PIN_CONFIGURATION == GPIO_CONFIG_ENABLE)
Std_ReturnType gpio_pin_direction_initialize(const pin_config_t *_pin_config ){
    Std_ReturnType ret_status = E_OK;
    if((NULL == _pin_config) || (_pin_config->pin > PORT_PIN_MAX_NUMBER-1)){
        ret_status = E_NOT_OK;
    }
    else{
        switch(_pin_config->direction){
            case GPIO_DIRECTION_OUTPUT:
                SET_BIT(*data_direction_registers[_pin_config->port], _pin_config->pin);
                break;
            case GPIO_DIRECTION_INPUT:
                CLEAR_BIT(*data_direction_registers[_pin_config->port], _pin_config->pin);
                break;
            default: ret_status = E_NOT_OK;
        }
    }
    return ret_status;
}
#endif

/**
 * @brief Retrieves the direction status of a specified GPIO pin
 * @param <_pin_config> pointer to the configurations @ref pin_config_t
 * @param <direction_status> Pointer to the direction status of a specified GPIO pin @ref direction_t
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (GPIO_PORT_PIN_CONFIGURATION == GPIO_CONFIG_ENABLE)
Std_ReturnType gpio_pin_get_direction_status(const pin_config_t *_pin_config, direction_t *direction_status){
    Std_ReturnType ret_status = E_OK;
    if((NULL == _pin_config) || (NULL == direction_status) || (_pin_config->pin > PORT_PIN_MAX_NUMBER-1)){
        ret_status = E_NOT_OK;
    }
    else{
        *direction_status = READ_BIT(*data_direction_registers[_pin_config->port], _pin_config->pin);
    }
    return ret_status;
}
#endif

/**
 * @brief Sets the logic level of a specified GPIO pin
 * @param <_pin_config> Pointer to the configurations @ref pin_config_t
 * @param <logic> The logic level to set for the GPIO pin @ref logic_t 
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (GPIO_PORT_PIN_CONFIGURATION == GPIO_CONFIG_ENABLE)
Std_ReturnType gpio_pin_write_logic(const pin_config_t *_pin_config, logic_t logic){
    Std_ReturnType ret_status = E_OK;
    if((NULL == _pin_config) || (_pin_config->pin > PORT_PIN_MAX_NUMBER-1)){
        ret_status = E_NOT_OK;
    }
    else{
        switch(logic){
            case GPIO_LOW:
                CLEAR_BIT(*port_registers[_pin_config->port], _pin_config->pin);
                break;
            case GPIO_HIGH:
                SET_BIT(*port_registers[_pin_config->port], _pin_config->pin);
                break;
            default: ret_status = E_NOT_OK;
        }
    }
    return ret_status;
}
#endif

/**
 * @brief Read the logic level of a specified GPIO pin
 * @param <_pin_config> pointer to the configurations @ref pin_config_t
 * @param <logic> Pointer to the logic level of the GPIO pin @ref logic_t 
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (GPIO_PORT_PIN_CONFIGURATION == GPIO_CONFIG_ENABLE)
Std_ReturnType gpio_pin_read_logic(const pin_config_t *_pin_config, logic_t *logic){
    Std_ReturnType ret_status = E_OK;
    if((NULL == _pin_config) || (NULL == logic) || (_pin_config->pin > PORT_PIN_MAX_NUMBER-1)){
        ret_status = E_NOT_OK;
    }
    else{
        *logic = READ_BIT(*pin_registers[_pin_config->port], _pin_config->pin);
    }
    return ret_status;
}
#endif

/**
 * @brief Toggle the logic level of a specified GPIO pin
 * @param <_pin_config> Pointer to the configurations @ref pin_config_t
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (GPIO_PORT_PIN_CONFIGURATION == GPIO_CONFIG_ENABLE)
Std_ReturnType gpio_pin_toggle_logic(const pin_config_t *_pin_config){
    Std_ReturnType ret_status = E_OK;
    if((NULL == _pin_config) || (_pin_config->pin > PORT_PIN_MAX_NUMBER-1)){
        ret_status = E_NOT_OK;
    }
    else{
        TOGGLE_BIT(*port_registers[_pin_config->port], _pin_config->pin);
    }
    return ret_status;
}
#endif

/**
 * @brief Initializes a specified GPIO pin with given configurations
 * @param <_pin_config> pointer to the configurations @ref pin_config_t
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (GPIO_PORT_PIN_CONFIGURATION == GPIO_CONFIG_ENABLE)
Std_ReturnType gpio_pin_initialize(const pin_config_t *_pin_config ){
    Std_ReturnType ret_status = E_OK;
    if((NULL == _pin_config) || (_pin_config->pin > PORT_PIN_MAX_NUMBER-1)){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = gpio_pin_direction_initialize(_pin_config);
        ret_status = gpio_pin_write_logic(_pin_config, _pin_config->logic);
    }
    return ret_status;
}
#endif

/**
 * @brief Initializes the direction of a specified GPIO port
 * @param <port> The index of the GPIO port to configure @ref port_index_t
 * @param <direction> The direction to set for the GPIO port
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (GPIO_PORT_CONFIGURATION == GPIO_CONFIG_ENABLE)
Std_ReturnType gpio_port_direction_initialize(port_index_t port, uint8 direction){
    Std_ReturnType ret_status = E_OK;
    if(port > PORT_MAX_NUMBER-1){
        ret_status = E_NOT_OK;
    }
    else{
        *data_direction_registers[port] = direction;
    }
    return ret_status;
}
#endif

/**
 * @brief Retrieves the direction status of a specified GPIO port
 * @param <port> The index of the GPIO port to configure @ref port_index_t
 * @param <direction_status> Pointer to the direction status of a specified GPIO port
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (GPIO_PORT_CONFIGURATION == GPIO_CONFIG_ENABLE)
Std_ReturnType gpio_port_get_direction_status(port_index_t port, uint8 *direction_status){
    Std_ReturnType ret_status = E_OK;
    if((NULL == direction_status) || (port > PORT_MAX_NUMBER-1)){
        ret_status = E_NOT_OK;
    }
    else{
        *direction_status = *data_direction_registers[port];
    }
    return ret_status;
}
#endif

/**
 * @brief Sets the logic level of all pins in a specified GPIO port
 * @param <port> The index of the GPIO port to configure @ref port_index_t
 * @param <logic> The logic level to set for the GPIO port
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (GPIO_PORT_CONFIGURATION == GPIO_CONFIG_ENABLE)
Std_ReturnType gpio_port_write_logic(port_index_t port, uint8 logic){
    Std_ReturnType ret_status = E_OK;
    if(port > PORT_MAX_NUMBER-1){
        ret_status = E_NOT_OK;
    }
    else{
        *port_registers[port] = logic;
    }
    return ret_status;
}
#endif

/**
 * @brief Reads the logic level of all pins in a specified GPIO port
 * @param <port> The index of the GPIO port to configure @ref port_index_t
 * @param <logic> Pointer to the logic level of the GPIO port
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (GPIO_PORT_CONFIGURATION == GPIO_CONFIG_ENABLE)
Std_ReturnType gpio_port_read_logic(port_index_t port, uint8 *logic){
    Std_ReturnType ret_status = E_OK;
    if((NULL == logic) || (port > PORT_MAX_NUMBER-1)){
        ret_status = E_NOT_OK;
    }
    else{
        *logic = *port_registers[port];
    }
    return ret_status;
}
#endif

/**
 * @brief Toggle the logic level of all pins in a specified GPIO port
 * @param <port> The index of the GPIO port to configure @ref port_index_t
 * @return Status of the function
 *          (E_OK)  : The function done successfully
 *          (E_NOT_OK)  : The function has issue to perform this action
 */
#if (GPIO_PORT_CONFIGURATION == GPIO_CONFIG_ENABLE)
Std_ReturnType gpio_port_toggle_logic(port_index_t port){
    Std_ReturnType ret_status = E_OK;
    if(port > PORT_MAX_NUMBER-1){
        ret_status = E_NOT_OK;
    }
    else{
        *port_registers[port] = ~(*port_registers[port]);
    }
    return ret_status;
}
#endif
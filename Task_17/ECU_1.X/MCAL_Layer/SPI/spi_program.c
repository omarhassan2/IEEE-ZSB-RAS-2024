/* 
 * File:   spi_interface.c
 * Author: Omar Hassan
 *
 * Created on August 13, 2024, 7:37 PM
 */

#include "../mcal_std_types.h"
#include "../bit_math.h"
#include "../GPIO/hal_gpio.h"
#include "spi_interface.h"


static pin_config_t SPI_MASTER_MOSI = {.port = PORTB_INDEX,.pin = GPIO_PIN5,
.direction = GPIO_DIRECTION_OUTPUT,.logic = GPIO_LOW};

static pin_config_t SPI_MASTER_MISO = {.port = PORTB_INDEX,.pin = GPIO_PIN6,
.direction = GPIO_DIRECTION_INPUT,.logic = GPIO_LOW};

static pin_config_t SPI_MASTER_CLK = {.port = PORTB_INDEX,.pin = GPIO_PIN7,
.direction = GPIO_DIRECTION_OUTPUT,.logic = GPIO_LOW};

static pin_config_t SPI_MASTER_SS = {.port = PORTB_INDEX,.pin = GPIO_PIN4,
.direction = GPIO_DIRECTION_OUTPUT,.logic = GPIO_LOW};


static pin_config_t SPI_SLAVE_MOSI = {.port = PORTB_INDEX,.pin = GPIO_PIN5,
.direction = GPIO_DIRECTION_INPUT,.logic = GPIO_LOW};

static pin_config_t SPI_SLAVE_MISO = {.port = PORTB_INDEX,.pin = GPIO_PIN6,
.direction = GPIO_DIRECTION_OUTPUT,.logic = GPIO_LOW};

static pin_config_t SPI_SLAVE_CLK = {.port = PORTB_INDEX,.pin = GPIO_PIN7,
.direction = GPIO_DIRECTION_INPUT,.logic = GPIO_LOW};

static pin_config_t SPI_SLAVE_SS = {.port = PORTB_INDEX,.pin = GPIO_PIN4,
.direction = GPIO_DIRECTION_INPUT,.logic = GPIO_LOW};


Std_ReturnType SPI_Init(void){
    //Mode
    #if SPI_MODE == SPI_MASTER
    //MOSI --> OUTPUT
    gpio_pin_direction_initialize(&SPI_MASTER_MOSI);
    //MISO --> INPUT
    gpio_pin_direction_initialize(&SPI_MASTER_MISO);
    //CLK --> OUTPUT
    gpio_pin_direction_initialize(&SPI_MASTER_CLK);
    //SS --> OUTPUT
    gpio_pin_direction_initialize(&SPI_MASTER_SS);
    gpio_pin_write_logic(&SPI_MASTER_SS, GPIO_HIGH);
    SET_BIT(SPI_SPCR,MSTR);
    #elif  SPI_MODE == SPI_SLAVE
    //MOSI --> INPUT
    gpio_pin_direction_initialize(&SPI_SLAVE_MOSI);
    //MISO --> OUTPUT
    gpio_pin_direction_initialize(&SPI_SLAVE_MISO);
    //CLK --> INPUT
    gpio_pin_direction_initialize(&SPI_SLAVE_CLK);
    //SS --> INPUT
    gpio_pin_direction_initialize(&SPI_SLAVE_SS);
    CLEAR_BIT(SPI_SPCR,MSTR);
    #endif
    //Data Order
    #if SPI_DATA_ORDER == LSB
    SET_BIT(SPI_SPCR,DORD);
    #elif  SPI_DATA_ORDER == MSB
    CLEAR_BIT(SPI_SPCR,DORD);
    #endif
    //Clock Polarity 
    #if SPI_CLOCK_POLARITY == LEADING_RISING
    CLEAR_BIT(SPI_SPCR,CPOL);
    #elif #if SPI_CLOCK_POLARITY == LEADING_FALLING
    SET_BIT(SPI_SPCR,CPOL);
    #endif
    //Clock Phase 
    #if SPI_CLOCK_PHASE== LEADING_SAMPLE
    CLEAR_BIT(SPI_SPCR,CPHA);
    #elif SPI_CLOCK_PHASE== LEADING_SETUP
    SET_BIT(SPI_SPCR,CPHA);
    #endif
    //Clock Prescaler 
    #if SPI_CLOCK_PRESCALER == DIV_2
    CLEAR_BIT(SPI_SPCR,SPR0);
    CLEAR_BIT(SPI_SPCR,SPR1);
    SET_BIT(SPI_SPSR,SPI2X);
    #elif SPI_CLOCK_PRESCALER == DIV_4
    CLEAR_BIT(SPI_SPCR,SPR0);
    CLEAR_BIT(SPI_SPCR,SPR1);
    CLEAR_BIT(SPI_SPSR,SPI2X);
    #elif SPI_CLOCK_PRESCALER == DIV_8
    SET_BIT(SPI_SPCR,SPR0);
    CLEAR_BIT(SPI_SPCR,SPR1);
    SET_BIT(SPI_SPSR,SPI2X);
    #elif SPI_CLOCK_PRESCALER == DIV_16
    SET_BIT(SPI_SPCR,SPR0);
    CLEAR_BIT(SPI_SPCR,SPR1);
    CLEAR_BIT(SPI_SPSR,SPI2X);
    #elif SPI_CLOCK_PRESCALER == DIV_32
    CLEAR_BIT(SPI_SPCR,SPR0);
    SET_BIT(SPI_SPCR,SPR1);
    SET_BIT(SPI_SPSR,SPI2X);
    #elif SPI_CLOCK_PRESCALER == DIV_64
    SET_BIT(SPI_SPCR,SPR0);
    SET_BIT(SPI_SPCR,SPR1);
    SET_BIT(SPI_SPSR,SPI2X);
    #elif SPI_CLOCK_PRESCALER == DIV_128
    SET_BIT(SPI_SPCR,SPR0);
    SET_BIT(SPI_SPCR,SPR1);
    CLEAR_BIT(SPI_SPSR,SPI2X);
    #endif
    //Enable SPI
    SET_BIT(SPI_SPCR,SPE);
    return E_OK;
}
Std_ReturnType SPI_Transceive(uint8 Copy_u8_Data ,uint8 *Copy_u8_recievedData){
        //Send Data
        SPI_SPDR = Copy_u8_Data;
        while ((!READ_BIT(SPI_SPSR,SPIF)));
        //Receive Data
        *Copy_u8_recievedData = SPI_SPDR;
        return E_OK;
}

Std_ReturnType SPI_Disable(void){
	CLEAR_BIT(SPI_SPCR,SPE);
	return E_OK;
}
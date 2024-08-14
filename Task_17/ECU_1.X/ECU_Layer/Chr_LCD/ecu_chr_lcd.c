/* 
 * File:   ecu_chr_lcd.c
 * Author: Omar Hassan
 *
 * Created on June 20, 2024, 2:22 AM
 */

#include "ecu_chr_lcd.h"

static Std_ReturnType lcd_send_4bits(const chr_lcd_4bit_t *_lcd, uint8 _data_command);
static Std_ReturnType lcd_4bit_send_enable_signal(const chr_lcd_4bit_t *_lcd);
static Std_ReturnType lcd_4bit_set_cursor(const chr_lcd_4bit_t *_lcd, uint8 row, uint8 column);

static Std_ReturnType lcd_8bit_send_enable_signal(const chr_lcd_8bit_t *_lcd);
static Std_ReturnType lcd_8bit_set_cursor(const chr_lcd_8bit_t *_lcd, uint8 row, uint8 column);

/**
 * @brief 
 * @param _lcd
 * @return 
 */
#if (CHR_LCD_CONFIGURATION == CHR_LCD_CONFIG_ENABLE)
Std_ReturnType lcd_4bit_initialize(const chr_lcd_4bit_t *_lcd){
    Std_ReturnType ret_status = E_OK;
    uint8 l_pins_counter = ZERO_INIT;
    if(NULL == _lcd){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = gpio_pin_initialize(&(_lcd->lcd_rs));
        ret_status &= gpio_pin_initialize(&(_lcd->lcd_en));
        for(l_pins_counter = ZERO_INIT; l_pins_counter < 4; l_pins_counter++){
            ret_status &= gpio_pin_initialize(&(_lcd->lcd_data[l_pins_counter]));
        }
        _delay_ms(20);
        ret_status = lcd_4bit_send_command(_lcd, _LCD_8BIT_MODE_2_LINE);
        _delay_ms(5);
        ret_status = lcd_4bit_send_command(_lcd, _LCD_8BIT_MODE_2_LINE);
        _delay_us(150);
        ret_status = lcd_4bit_send_command(_lcd, _LCD_8BIT_MODE_2_LINE);
        ret_status = lcd_4bit_send_command(_lcd, _LCD_CLEAR);
        ret_status = lcd_4bit_send_command(_lcd, _LCD_RETURN_HOME);
        ret_status = lcd_4bit_send_command(_lcd, _LCD_ENTRY_MODE);
        ret_status = lcd_4bit_send_command(_lcd, _LCD_CURSOR_OFF_DISPLAY_ON);
        ret_status = lcd_4bit_send_command(_lcd, _LCD_4BIT_MODE_2_LINE);
        ret_status = lcd_4bit_send_command(_lcd, ROW1_START_ADDRESS);
    }
    return ret_status;
}
#endif

/**
 * @brief 
 * @param _lcd
 * @param command
 * @return 
 */
#if (CHR_LCD_CONFIGURATION == CHR_LCD_CONFIG_ENABLE)
Std_ReturnType lcd_4bit_send_command(const chr_lcd_4bit_t *_lcd, uint8 command){
    Std_ReturnType ret_status = E_OK;
    if(NULL == _lcd){
        ret_status = E_NOT_OK;
    }
    else{
        /* To Send Command -> lcd_rs  = 0, After each send enable the signal */
        ret_status = gpio_pin_write_logic(&(_lcd->lcd_rs), GPIO_LOW);
        ret_status &= lcd_send_4bits(_lcd, (command >> 4));
        ret_status &= lcd_4bit_send_enable_signal(_lcd);
        ret_status &= lcd_send_4bits(_lcd, command);
        ret_status &= lcd_4bit_send_enable_signal(_lcd);
    }
    return ret_status;
}
#endif

/**
 * @brief 
 * @param _lcd
 * @param data
 * @return 
 */
#if (CHR_LCD_CONFIGURATION == CHR_LCD_CONFIG_ENABLE)
Std_ReturnType lcd_4bit_send_char_data(const chr_lcd_4bit_t *_lcd, uint8 data){
    Std_ReturnType ret_status = E_OK;
    if(NULL == _lcd){
        ret_status = E_NOT_OK;
    }
    else{
        /* To Send Data -> lcd_rs  = 1, After each send enable the signal */
        ret_status = gpio_pin_write_logic(&(_lcd->lcd_rs), GPIO_HIGH);
        ret_status &= lcd_send_4bits(_lcd, (data >> 4));
        ret_status &= lcd_4bit_send_enable_signal(_lcd);
        ret_status &= lcd_send_4bits(_lcd, data);
        ret_status &= lcd_4bit_send_enable_signal(_lcd);
    }
    return ret_status;
}
#endif

/**
 * @brief 
 * @param _lcd
 * @param row
 * @param column
 * @param data
 * @return 
 */
#if (CHR_LCD_CONFIGURATION == CHR_LCD_CONFIG_ENABLE)
Std_ReturnType lcd_4bit_send_char_data_pos(const chr_lcd_4bit_t *_lcd, uint8 row, uint8 column, uint8 data){
    Std_ReturnType ret_status = E_OK;
    if(NULL == _lcd){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = lcd_4bit_set_cursor(_lcd, row, column);
        ret_status = lcd_4bit_send_char_data(_lcd, data);
    }
    return ret_status;
}
#endif

/**
 * @brief 
 * @param _lcd
 * @param str
 * @return 
 */
#if (CHR_LCD_CONFIGURATION == CHR_LCD_CONFIG_ENABLE)
Std_ReturnType lcd_4bit_send_string(const chr_lcd_4bit_t *_lcd, uint8 *str){
    Std_ReturnType ret_status = E_OK;
    if((NULL == _lcd) || (NULL == str)){
        ret_status = E_NOT_OK;
    }
    else{
        while(*str){
            ret_status = lcd_4bit_send_char_data(_lcd, *str++);
        }
    }
    return ret_status;
}
#endif

/**
 * @brief 
 * @param _lcd
 * @param row
 * @param column
 * @param str
 * @return 
 */
#if (CHR_LCD_CONFIGURATION == CHR_LCD_CONFIG_ENABLE)
Std_ReturnType lcd_4bit_send_string_pos(const chr_lcd_4bit_t *_lcd, uint8 row, uint8 column, uint8 *str){
    Std_ReturnType ret_status = E_OK;
    if((NULL == _lcd) || (NULL == str)){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = lcd_4bit_set_cursor(_lcd, row, column);
        ret_status = lcd_4bit_send_string(_lcd, str);
    }
    return ret_status;
}
#endif

/**
 * @brief 
 * @param _lcd
 * @param row
 * @param column
 * @param _chr
 * @param mem_pos
 * @return 
 */
#if (CHR_LCD_CONFIGURATION == CHR_LCD_CONFIG_ENABLE)
Std_ReturnType lcd_4bit_custom_char(const chr_lcd_4bit_t *_lcd, uint8 row, uint8 column,
                                    const uint8 _chr[], uint8 mem_pos){
    Std_ReturnType ret_status = E_OK;
    uint8 cg_ram_counter = ZERO_INIT;
    if(NULL == _lcd){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = lcd_4bit_send_command(_lcd, (_LCD_CGRAM_START + mem_pos*8));
        for(cg_ram_counter=0; cg_ram_counter<8; cg_ram_counter++){
            ret_status = lcd_4bit_send_char_data(_lcd, _chr[cg_ram_counter]);
        }
        ret_status = lcd_4bit_send_char_data_pos(_lcd, row, column, mem_pos);
    }
    return ret_status;
}
#endif

/**
 * @brief 
 * @param _lcd
 * @return 
 */
#if (CHR_LCD_CONFIGURATION == CHR_LCD_CONFIG_ENABLE)
Std_ReturnType lcd_8bit_initialize(const chr_lcd_8bit_t *_lcd){
    Std_ReturnType ret_status = E_OK;
    uint8 l_pins_counter = ZERO_INIT;
    if(NULL == _lcd){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = gpio_pin_initialize(&(_lcd->lcd_rs));
        ret_status = gpio_pin_initialize(&(_lcd->lcd_en));
        for(l_pins_counter = ZERO_INIT; l_pins_counter<8; l_pins_counter++){
            ret_status = gpio_pin_initialize(&(_lcd->lcd_data[l_pins_counter]));
        }
        _delay_ms(20);
        ret_status = lcd_8bit_send_command(_lcd, _LCD_8BIT_MODE_2_LINE);
        _delay_ms(5);
        ret_status = lcd_8bit_send_command(_lcd, _LCD_8BIT_MODE_2_LINE);
        _delay_us(150);
        ret_status = lcd_8bit_send_command(_lcd, _LCD_8BIT_MODE_2_LINE);
        ret_status = lcd_8bit_send_command(_lcd, _LCD_CLEAR);
        ret_status = lcd_8bit_send_command(_lcd, _LCD_RETURN_HOME);
        ret_status = lcd_8bit_send_command(_lcd, _LCD_ENTRY_MODE);
        ret_status = lcd_8bit_send_command(_lcd, _LCD_CURSOR_OFF_DISPLAY_ON);
        ret_status = lcd_8bit_send_command(_lcd, _LCD_8BIT_MODE_2_LINE);
        ret_status = lcd_8bit_send_command(_lcd, ROW1_START_ADDRESS);
    }
    return ret_status;
}
#endif

/**
 * @brief 
 * @param _lcd
 * @param command
 * @return 
 */
#if (CHR_LCD_CONFIGURATION == CHR_LCD_CONFIG_ENABLE)
Std_ReturnType lcd_8bit_send_command(const chr_lcd_8bit_t *_lcd, uint8 command){
    Std_ReturnType ret_status = E_OK;
    uint8 l_pins_counter  = ZERO_INIT;
    if(NULL == _lcd){
        ret_status = E_NOT_OK;
    }
    else{
        /* To Send Command -> lcd_rs  = 0, After each send enable the signal */
        ret_status = gpio_pin_write_logic(&(_lcd->lcd_rs), GPIO_LOW);
        for(l_pins_counter  = ZERO_INIT; l_pins_counter<8; l_pins_counter++){
            ret_status = gpio_pin_write_logic(&(_lcd->lcd_data[l_pins_counter]),(command>>l_pins_counter)&(uint8)0x01);
        }
        ret_status &= lcd_8bit_send_enable_signal(_lcd);
    }
    return ret_status;
}
#endif

/**
 * @brief 
 * @param _lcd
 * @param data
 * @return 
 */
#if (CHR_LCD_CONFIGURATION == CHR_LCD_CONFIG_ENABLE)
Std_ReturnType lcd_8bit_send_char_data(const chr_lcd_8bit_t *_lcd, uint8 data){
    Std_ReturnType ret_status = E_OK;
    uint8 l_pins_counter  = ZERO_INIT;
    if(NULL == _lcd){
        ret_status = E_NOT_OK;
    }
    else{
        /* To Send Data -> lcd_rs  = 1, After each send enable the signal */
        ret_status = gpio_pin_write_logic(&(_lcd->lcd_rs), GPIO_HIGH);
        for(l_pins_counter  = ZERO_INIT; l_pins_counter<8; l_pins_counter++){
            ret_status = gpio_pin_write_logic(&(_lcd->lcd_data[l_pins_counter]),(data>>l_pins_counter)&(uint8)0x01);
        }
        ret_status &= lcd_8bit_send_enable_signal(_lcd);
    }
    return ret_status;
}
#endif

/**
 * @brief 
 * @param _lcd
 * @param row
 * @param column
 * @param data
 * @return 
 */
#if (CHR_LCD_CONFIGURATION == CHR_LCD_CONFIG_ENABLE)
Std_ReturnType lcd_8bit_send_char_data_pos(const chr_lcd_8bit_t *_lcd, uint8 row, uint8 column, uint8 data){
    Std_ReturnType ret_status = E_OK;
    if(NULL == _lcd){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = lcd_8bit_set_cursor(_lcd, row, column);
        ret_status = lcd_8bit_send_char_data(_lcd, data);
    }
    return ret_status;
}
#endif

/**
 * @brief 
 * @param _lcd
 * @param str
 * @return 
 */
#if (CHR_LCD_CONFIGURATION == CHR_LCD_CONFIG_ENABLE)
Std_ReturnType lcd_8bit_send_string(const chr_lcd_8bit_t *_lcd, uint8 *str){
    Std_ReturnType ret_status = E_OK;
    if((NULL == _lcd) || (NULL == str)){
        ret_status = E_NOT_OK;
    }
    else{
        while(*str){
            ret_status = lcd_8bit_send_char_data(_lcd, *str++);
        }
    }
    return ret_status;
}
#endif

/**
 * @brief 
 * @param _lcd
 * @param row
 * @param column
 * @param str
 * @return 
 */
#if (CHR_LCD_CONFIGURATION == CHR_LCD_CONFIG_ENABLE)
Std_ReturnType lcd_8bit_send_string_pos(const chr_lcd_8bit_t *_lcd, uint8 row, uint8 column, uint8 *str){
    Std_ReturnType ret_status = E_OK;
    if((NULL == _lcd) || (NULL == str)){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = lcd_8bit_set_cursor(_lcd, row, column);
        ret_status = lcd_8bit_send_string(_lcd, str);
    }
    return ret_status;
}
#endif

/**
 * @brief 
 * @param _lcd
 * @param row
 * @param column
 * @param _chr
 * @param mem_pos
 * @return 
 */
#if (CHR_LCD_CONFIGURATION == CHR_LCD_CONFIG_ENABLE)
Std_ReturnType lcd_8bit_custom_char(const chr_lcd_8bit_t *_lcd, uint8 row, uint8 column,
                                    const uint8 _chr[], uint8 mem_pos){
    Std_ReturnType ret_status = E_OK;
    uint8 cg_ram_counter = ZERO_INIT;
    if(NULL == _lcd){
        ret_status = E_NOT_OK;
    }
    else{
        ret_status = lcd_8bit_send_command(_lcd, (_LCD_CGRAM_START + mem_pos*8));
        for(cg_ram_counter=0; cg_ram_counter<8; cg_ram_counter++){
            ret_status = lcd_8bit_send_char_data(_lcd, _chr[cg_ram_counter]);
        }
        ret_status = lcd_8bit_send_char_data_pos(_lcd, row, column, mem_pos);
    }
    return ret_status;
}
#endif

/**
 * @brief 
 * @param value
 * @param str
 * @return 
 */
Std_ReturnType convert_byte_to_string(uint8 value, uint8 *str){
    Std_ReturnType ret_status = E_OK;
    if(NULL == str){
        ret_status = E_NOT_OK;
    }
    else{
        memset(str, '\0', 4);
        sprintf(str, "%i", value);
    }
    return ret_status;
}

/**
 * @brief 
 * @param value
 * @param str
 * @return 
 */
Std_ReturnType convert_short_to_string(uint16 value, uint16 *str){
    Std_ReturnType ret_status = E_OK;
    if(NULL == str){
        ret_status = E_NOT_OK;
    }
    else{
        memset(str, '\0', 6);
        sprintf(str, "%i", value);
    }
    return ret_status;
}

/**
 * @brief 
 * @param value
 * @param str
 * @return 
 */
Std_ReturnType convert_int_to_string(uint32 value, uint32 *str){
    Std_ReturnType ret_status = E_OK;
    if(NULL == str){
        ret_status = E_NOT_OK;
    }
    else{
        memset(str, '\0', 11);
        sprintf(str, "%i", value);
    }
    return ret_status;
}

/**
 * @brief 
 * @param _lcd
 * @param _data_command
 * @return 
 */
static Std_ReturnType lcd_send_4bits(const chr_lcd_4bit_t *_lcd, uint8 _data_command){
    Std_ReturnType ret_status = E_OK;
    ret_status  = gpio_pin_write_logic(&(_lcd->lcd_data[0]), (_data_command >> 0) & (uint8)0x01);
    ret_status &= gpio_pin_write_logic(&(_lcd->lcd_data[1]), (_data_command >> 1) & (uint8)0x01);
    ret_status &= gpio_pin_write_logic(&(_lcd->lcd_data[2]), (_data_command >> 2) & (uint8)0x01);
    ret_status &= gpio_pin_write_logic(&(_lcd->lcd_data[3]), (_data_command >> 3) & (uint8)0x01);
    return ret_status;
}

/**
 * @brief failing edge enable for chr_lcd_4bit_t
 * @param _lcd
 * @return 
 */
static Std_ReturnType lcd_4bit_send_enable_signal(const chr_lcd_4bit_t *_lcd){
    Std_ReturnType ret_status = E_OK;
    ret_status  = gpio_pin_write_logic(&(_lcd->lcd_en), GPIO_HIGH);
    _delay_us(5);
    ret_status  &= gpio_pin_write_logic(&(_lcd->lcd_en), GPIO_LOW);
    return ret_status;
}

/**
 * @brief 
 * @param _lcd
 * @param row
 * @param column
 * @return 
 */
static Std_ReturnType lcd_4bit_set_cursor(const chr_lcd_4bit_t *_lcd, uint8 row, uint8 column){
    Std_ReturnType ret_status = E_OK;
    column--;
    switch(row){
        case ROW1: ret_status = lcd_4bit_send_command(_lcd, (ROW1_START_ADDRESS + column));break;
        case ROW2: ret_status = lcd_4bit_send_command(_lcd, (ROW2_START_ADDRESS + column));break;
        case ROW3: ret_status = lcd_4bit_send_command(_lcd, (ROW3_START_ADDRESS + column));break;
        case ROW4: ret_status = lcd_4bit_send_command(_lcd, (ROW4_START_ADDRESS + column));break;
        default: ;
    }
    return ret_status;
}

 /**
 * @brief failing edge enable chr_lcd_8bit_t
 * @param _lcd
 * @return 
 */
static Std_ReturnType lcd_8bit_send_enable_signal(const chr_lcd_8bit_t *_lcd){
    Std_ReturnType ret_status = E_OK;
    ret_status  = gpio_pin_write_logic(&(_lcd->lcd_en), GPIO_HIGH);
    _delay_us(5);
    ret_status  &= gpio_pin_write_logic(&(_lcd->lcd_en), GPIO_LOW);
    return ret_status;
}   

/**
 * @brief 
 * @param _lcd
 * @param row
 * @param column
 * @return 
 */
static Std_ReturnType lcd_8bit_set_cursor(const chr_lcd_8bit_t *_lcd, uint8 row, uint8 column){
    Std_ReturnType ret_status = E_OK;
    column--;
    switch(row){
        case ROW1: ret_status = lcd_8bit_send_command(_lcd, (ROW1_START_ADDRESS + column));break;
        case ROW2: ret_status = lcd_8bit_send_command(_lcd, (ROW2_START_ADDRESS + column));break;
        case ROW3: ret_status = lcd_8bit_send_command(_lcd, (ROW3_START_ADDRESS + column));break;
        case ROW4: ret_status = lcd_8bit_send_command(_lcd, (ROW4_START_ADDRESS + column));break;
        default: ;
    }
    return ret_status;
}   


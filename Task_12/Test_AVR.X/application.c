/* 
 * File:   application.c
 * Author: Omar Hassan
 *
 * Created on June 26, 2024, 3:34 PM
 */

#include "application.h"


uint8 customCharFull[] = {0x1F,0x1F,0x1F,0x1F,0x1F,0x1F,0x1F,0x1F};

uint8 keypad_value = 0;
uint8 reset_flag = 0;

int main() {  
    Std_ReturnType ret_status = E_OK;
    application_initialize();
    
    
    while(1){
        if(reset_flag == 1){
            lcd_4bit_send_command(&lcd1, _LCD_CLEAR);
            reset_flag = 0;
        }
        
        ret_status = keypad_get_value(&keypad1, &keypad_value);
        switch(keypad_value){
            case '1':
                charing(1);
                break;
            case '2':
                charing(2);
                break;
            case '3':
                charing(3);
                break;
            case '4':
                charing(4);
                break;
            default:
                lcd_4bit_send_command(&lcd1, _LCD_CLEAR); 
        }
    }
 
    return (EXIT_SUCCESS);
}

void application_initialize(void){
    ecu_layer_initialize();
    enableGlobalInterrupt();
    EXTI_voidInit();
    EXTI_voidEnableInterrupt(EXTI_LINE0);
    EXTI_voidSetCallBack(reset_ISR, EXTI_INT_0);
}

/*
 *  ISR callback function for the reset button
 */
void reset_ISR(void){
    reset_flag = 1;
}

void charing(uint8 row){
    uint8 col = 0;
    for(col = 1; col <= 20; col++){
        lcd_4bit_custom_char(&lcd1, row, col, customCharFull, 0);
        _delay_ms(DELAY_LCD);
    }
}

void enableGlobalInterrupt(void){
    sei();
}
/* 
 * File:   application.c
 * Author: Omar Hassan
 *
 * Created on June 26, 2024, 3:34 PM
 */

#include "application.h"

uint8 data_trasnmitter[] = "Hello form ECU 1";
uint8 *data_recevier; 

int main() {  
    Std_ReturnType ret_status = E_OK;
    application_initialize();
    
    while(1){
        if(USART_u8RecevieData(data_recevier) == 1){
            lcd_4bit_send_string_pos(&lcd, 1, 3, data_recevier);
            USART_u8SendStringAsynch(data_trasnmitter, NULL);
        }   
    }

    return (EXIT_SUCCESS);
}

void application_initialize(void){
    ecu_layer_initialize();
    USART_voidInit();
}
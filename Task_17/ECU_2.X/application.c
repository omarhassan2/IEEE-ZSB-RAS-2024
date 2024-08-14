/* 
 * File:   application.c
 * Author: Omar Hassan
 *
 * Created on June 26, 2024, 3:34 PM
 */

#include "application.h"

uint8 message[] = "Receiving from ";
uint8 data_trasnmitter = 'S'; // Slave
uint8 data_recevier = 0; 

int main() {  
    Std_ReturnType ret_status = E_OK;
    application_initialize();
    
    lcd_4bit_send_string_pos(&lcd, 1, 1, message);
    
    while(1){
         SPI_Transceive(data_trasnmitter, &data_recevier);
         _delay_ms(5);
         lcd_4bit_send_char_data_pos(&lcd, 1, 15, data_recevier);
    }

    return (EXIT_SUCCESS);
}

void application_initialize(void){
    ecu_layer_initialize();
    SPI_Init();
}
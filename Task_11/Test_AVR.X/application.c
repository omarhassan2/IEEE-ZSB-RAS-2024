/* 
 * File:   application.c
 * Author: Omar Hassan
 *
 * Created on June 26, 2024, 3:34 PM
 */

#include "application.h"

button_state_t btn_status = BUTTON_RELEASED;
button_state_t btn_valid_status = BUTTON_RELEASED;
button_state_t btn_valid_last_status = BUTTON_RELEASED;

uint32 btn_valid = 0;

uint8 index = 0;

int main() {  
    Std_ReturnType ret_status = E_OK;
    application_initialize();
    
    while(1){
        ret_status = button_read_state(&btn, &btn_status);
        if(BUTTON_PRESSED == btn_status){
            btn_valid++;
            if(btn_valid > 1000){
                btn_valid_status = BUTTON_PRESSED;
            }
        }
        else{
            btn_valid = 0;
            btn_valid_status = BUTTON_RELEASED;
        }
        
        if(BUTTON_PRESSED == btn_valid_status){
            if(5 == index){
                index = 0;
            }
            switch(index)
            {
                case GO_FORWARD:
                    dc_motor_move_right(&motor_1);
                    dc_motor_move_right(&motor_2);
                    break;
                case GO_BACK:
                    dc_motor_move_left(&motor_1);
                    dc_motor_move_left(&motor_2);
                    break;
                case TURN_LEFT:
                    dc_motor_move_left(&motor_1);
                    dc_motor_move_right(&motor_2);
                    break;
                case TURN_RIGHT:
                    dc_motor_move_right(&motor_1);
                    dc_motor_move_left(&motor_2);
                    break;
                case STOP:
                    dc_motor_stop(&motor_1);
                    dc_motor_stop(&motor_2);
                    break;
            }
            index++;
        }
    }
 
    return (EXIT_SUCCESS);
}

void application_initialize(void){
    ecu_layer_initialize();
}


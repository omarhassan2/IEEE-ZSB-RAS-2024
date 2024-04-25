/**
 *******************************************************************
 * @file           : program_2.c
 * @author         : Omar Hassan
 * @date           : April 22, 2024
 * @brief          : This file contains the soultion of Assignment_3_program_2
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Macro Definition Section Start ************/
#define ADDITION(num1, num2)       ((num1) + (num2))
#define SUBTRACTION(num1, num2)    ((num1) - (num2))

#define OPERATOR    SUBTRACTION 
/*********** Macro Definition Section End ************/


/*********** Global Definition Section Start ************/
typedef unsigned int uint32_t;
uint32_t num1 = 25;
uint32_t num2 = 25;
/*********** Global Definition Section End ************/


/*********** Main function Start ***********/
int main(){
    #ifdef OPERATOR
        printf("Rsult of Operation = %d\n", OPERATOR(num1, num2));
    #else
        #error "Unexceptecd Operation !!!, Please define the Operation"
    #endif
}
/*********** Main function End ***********/
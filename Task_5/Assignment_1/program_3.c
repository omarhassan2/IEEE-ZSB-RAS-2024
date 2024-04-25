/**
 *******************************************************************
 * @file           : program_3.c
 * @author         : Omar Hassan
 * @date           : April 22, 2024
 * @brief          : This file contains the soultion of Assignment_1_program_3
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Global Definition Section Start ************/
typedef     unsigned char           uint8_t;
typedef     unsigned short          uint16_t;
typedef     unsigned int            uint32_t;
typedef     unsigned long long      uint64_t;
typedef     signed char             sint8_t;
typedef     signed short            sint16_t;
typedef     signed int              sint32_t;
typedef     signed long long        sint64_t;
typedef     float                   float32_t;
typedef     double                  float64_t;
/*********** Global Definition Section End ************/


/*********** Main function Start ***********/
int main(){
    printf("Size of unsigned char = %d\n", sizeof(uint8_t));
    printf("Size of unsigned short = %d\n", sizeof(uint16_t));
    printf("Size of unsigned int = %d\n", sizeof(uint32_t));
    printf("Size of unsigned long long = %d\n", sizeof(uint64_t));
    printf("Size of signed char = %d\n", sizeof(sint8_t));
    printf("Size of signed char = %d\n", sizeof(sint16_t));
    printf("Size of signed char = %d\n", sizeof(sint32_t));
    printf("Size of signed char = %d\n", sizeof(sint64_t));
    printf("Size of float = %d\n", sizeof(float32_t));
    printf("Size of double = %d\n", sizeof(float64_t));
}
/*********** Main function End ***********/
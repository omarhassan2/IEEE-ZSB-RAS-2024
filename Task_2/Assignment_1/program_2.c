/**
 *******************************************************************
 * @file           : program_2.c
 * @author         : Omar Hassan
 * @date           : April 6, 2024
 * @brief          : This file contains the soultion of Assignment_1_program_2
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/



/*********** Main function Start ***********/
int main(){
    int var = 0x332211;
    char *ptr = &var;

    printf("*ptr++ = 0x%X\n", *ptr++); /* ptr -> 0x11, print = 0x11, ptr -> 0x22*/
    printf("*++ptr = 0x%X\n", *++ptr); /* ptr -> 0x33, print = 0x33, ptr -> 0x33*/
    printf("++*ptr = 0x%X\n", ++*ptr); /* ptr -> 0x33, print 0x33 + 0x01 = 0x34, ptr -> 0x34 */
}
/*********** Main function End ***********/
/**
 *******************************************************************
 * @file           : program_1.c
 * @author         : Omar Hassan
 * @date           : April 6, 2024
 * @brief          : This file contains the soultion of Assignment_1_program_1
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Main function Start ***********/
int main(){
    /* These pointers are Wild Pointers so they will have a garbage values */
    int *p1;
    char *p2;
    long long *p3;

    printf("p1 = 0x%X\n", p1);
    printf("p2 = 0x%X\n", p2);
    printf("p3 = 0x%X\n", p3);
    printf("----------------------\n");

    p1++; /* assume in this machine int = 4 bytes -> if p1 = 0x00 so it will be (p1 + 4) -> p1 = 0x04 */
    p2++; /* char is 1 byte -> if p2 = 0x00 so it will be (p2 + 1) -> p2 = 0x01 */
    p3++; /* char is 8 byte -> if p3 = 0x00 so it will be (p3 + 8) -> p2 = 0x08 */

    printf("p1 = 0x%X\n", p1);
    printf("p2 = 0x%X\n", p2);
    printf("p3 = 0x%X\n", p3);
    
}
/*********** Main function End ***********/
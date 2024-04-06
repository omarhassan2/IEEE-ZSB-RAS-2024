/**
 *******************************************************************
 * @file           : program_1.c
 * @author         : Omar Hassan
 * @date           : April 6, 2024
 * @brief          : This file contains the soultion of Assignment_2_program_1
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Functions Decleration Section Start ***********/
void increment(int *ptrNum);
/*********** Functions Decleration Section End ***********/


/*********** Main function Start ***********/
int main(){
    int num = 0x01;
    void (*ptrFunction)(int *) = increment; 

    printf("Num = 0x%X\n", num);
    ptrFunction(&num);
    printf("Num = 0x%X\n", num);
}
/*********** Main function End ***********/


/*********** Functions Definition Section Start ***********/
void increment(int *ptrNum)
{
    ++*ptrNum;
}
/*********** Functions Definition Section End   ***********/
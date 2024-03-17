/**
 *******************************************************************
 * @file           : program_4.c
 * @author         : Omar Hassan
 * @date           : March 17, 2024
 * @brief          : This file contains the soultion of Assignment_1_program_4
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Functions Decleration Section Start ***********/
int add(int *ptrA, int *ptrB);
/*********** Functions Decleration Section End ***********/


/*********** Main function Start ***********/
int main(){
    int num1 = 0, num2 = 0;

    printf("Enter 2 numbers to get their summing:");
    scanf("%d %d", &num1, &num2);

    printf("The Summing = %d", add(&num1, &num2));
}
/*********** Main function End ***********/


/*********** Functions Definition Section Start ***********/
int add(int *ptrA, int *ptrB){
    return (*ptrA + *ptrB);
}
/*********** Functions Definition Section End   ***********/
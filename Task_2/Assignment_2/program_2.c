/**
 *******************************************************************
 * @file           : program_2.c
 * @author         : Omar Hassan
 * @date           : April 6, 2024
 * @brief          : This file contains the soultion of Assignment_2_program_2
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/



/*********** Main function Start ***********/
int main(){
    int arr[] = {0, 1 ,2 ,3 ,4, 5};
    int *ptr = arr;

    int length = sizeof(arr) / sizeof(arr[0]);

    for (size_t i = 0; i < length; i++)
    {
        /* First Method */
        printf("0x%X\t", ptr[i]);
    }

    printf("\n--------------------------\n");

    for (size_t i = 0; i < length; i++)
    {
        /* Second Method */
        printf("0x%X\t", *(ptr + i));
    }
    
}
/*********** Main function End ***********/
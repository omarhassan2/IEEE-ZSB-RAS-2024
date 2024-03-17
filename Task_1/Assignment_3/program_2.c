/**
 *******************************************************************
 * @file           : program_2.c
 * @author         : Omar Hassan
 * @date           : March 17, 2024
 * @brief          : This file contains the soultion of Assignment_3_program_2
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Macro Section Start ************/
#define MAX_SIZE        (100)
/*********** Macro Section End   ************/


/*********** Main function Start ***********/
int main(){
    char str[MAX_SIZE];

    printf("Enter a string to separate it's char : ");
    gets(str);

    int i = 0;
    while (str[i] != '\0')
    {
        printf("'%c' ", str[i++]);
    }
}
/*********** Main function End ***********/
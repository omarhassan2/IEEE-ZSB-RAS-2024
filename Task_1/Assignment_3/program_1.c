/**
 *******************************************************************
 * @file           : program_1.c
 * @author         : Omar Hassan
 * @date           : March 17, 2024
 * @brief          : This file contains the soultion of Assignment_3_program_1
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

    printf("Enter a string to print it : ");

    /* Method 1 */
    gets(str);
    puts(str);

    /* Method 2 */
    scanf("%[^\n]", str);
    printf("%s", str);
}
/*********** Main function End ***********/
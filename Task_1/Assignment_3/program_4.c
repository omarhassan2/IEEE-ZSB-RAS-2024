/**
 *******************************************************************
 * @file           : program_4.c
 * @author         : Omar Hassan
 * @date           : March 17, 2024
 * @brief          : This file contains the soultion of Assignment_3_program_4
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Macro Section Start ************/
#define MAX_SIZE        (100)
/*********** Macro Section End   ************/


/*********** Functions Decleration Section Start ***********/
char *My_strcpy(char *dest, const char *src);
/*********** Functions Decleration Section End ***********/


/*********** Main function Start ***********/
int main(){
   char dest[MAX_SIZE];
   char src[MAX_SIZE] = "Omar wins Micromouse 24";

    /* Before Copy*/
    printf("src  = %s\n", src);
    printf("dest = %s\n", dest);

    printf("------------------\n");
    My_strcpy(dest, src);

    /* After Copy*/
    printf("src  = %s\n", src);
    printf("dest = %s\n", dest);

}
/*********** Main function End ***********/


/*********** Functions Definition Section Start ***********/
char *My_strcpy(char *dest, const char *src){
    char *ptrdest = dest;
    const char *ptrsrc = src;

    while((*ptrsrc) != '\0')
    {
        *ptrdest++ = *ptrsrc++;
    }

    return dest;
}
/*********** Functions Definition Section End   ***********/
/**
 *******************************************************************
 * @file           : program_3.c
 * @author         : Omar Hassan
 * @date           : March 17, 2024
 * @brief          : This file contains the soultion of Assignment_3_program_3
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
int My_strcmp(const char *str1, const char *str2);
/*********** Functions Decleration Section End ***********/


/*********** Main function Start ***********/
int main(){
    char str1[MAX_SIZE]; 
    char str2[MAX_SIZE];

    printf("Enter first  string: ");gets(str1);
    printf("Enter second string: ");gets(str2);

    int RetVal = My_strcmp(str1, str2);
    switch (RetVal)
    {
    case 0:
        printf("str1 = str2");
        break;
    case 1:
        printf("str1 > str2");
        break;
    case -1:
        printf("str1 < str2");
        break;
    }
}
/*********** Main function End ***********/


/*********** Functions Definition Section Start ***********/
int My_strcmp(const char *str1, const char *str2){
    const char *ptr1 = str1;
    const char *ptr2 = str2;
    int RetVal = 0; /* str1 = str2 */

    while((*ptr1 != '\0') || (*ptr2 != '\0'))
    {
        if(*ptr1 > *ptr2)
        {
            RetVal = 1; /* str1 > str2 */
            break;
        }
        else if(*ptr1 < *ptr2)
        {
            RetVal = -1; /* str1 < str2 */
            break;
        }
        else
        {
            ptr1++;
            ptr2++;
        }
    }
    return RetVal;
}
/*********** Functions Definition Section End   ***********/
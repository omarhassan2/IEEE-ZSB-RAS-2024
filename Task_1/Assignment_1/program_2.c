/**
 *******************************************************************
 * @file           : program_2.c
 * @author         : Omar Hassan
 * @date           : March 17, 2024
 * @brief          : This file contains the soultion of Assignment_1_program_2
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Main function Start ***********/
int main(){
    unsigned int i = 0, j = 0;
    unsigned char duplicateFlag = 0;

    unsigned int arr[] = {1, 2, 3, 4, 5, 4, 3, 1, 6};
    unsigned int length = sizeof(arr)/sizeof(arr[0]);

    printf("Unique elements in an array :");
    for (i = 0; i < length; i++){
        for(j = 0; j < length; j++){
            /* Check all elements except i compare with(i) */
            if((arr[i] == arr[j]) && (j != i)){
                duplicateFlag = 1;
                break;
            }
        }
        if(!duplicateFlag){
            printf(" %u", arr[i]);
        }
        duplicateFlag = 0;
    }

}
/*********** Main function End ***********/
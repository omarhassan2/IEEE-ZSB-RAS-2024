/**
 *******************************************************************
 * @file           : program_1.c
 * @author         : Omar Hassan
 * @date           : March 17, 2024
 * @brief          : This file contains the soultion of Assignment_1_program_1
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Main function Start ***********/
int main(){
    unsigned int i = 0, j = 0;
    unsigned int duplicateCounter = 0;

    unsigned int arr[] = {1, 2, 3, 4, 5, 4, 3, 1};
    unsigned int length = sizeof(arr)/sizeof(arr[0]);

    for (i = 0; i < length; i++){
        for(j = i+1; j < length; j++){
            if(arr[i] == arr[j]){
                duplicateCounter++;
                break;
            }
        }
    }

    printf("a total number of duplicate elements in an array = %u", duplicateCounter); 
}
/*********** Main function End ***********/

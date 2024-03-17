/**
 *******************************************************************
 * @file           : program_3.c
 * @author         : Omar Hassan
 * @date           : March 17, 2024
 * @brief          : This file contains the soultion of Assignment_1_program_3
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Macro Section Start ************/
#define MAX_SIZE        (100)
/*********** Macro Section End   ************/


/*********** Global Decleration Section Start ***********/
unsigned int i, j, counter;
/*********** Global Decleration Section End ***********/


/*********** Functions Decleration Section Start ***********/
void getFreq(const unsigned int arr[], const unsigned int length);
/*********** Functions Decleration Section End ***********/


/*********** Main function Start ***********/
int main(){
    unsigned int arr[] = {1, 2, 1, 3, 4, 6, 4, 7, 8, 3, 6};
    unsigned int length = sizeof(arr)/sizeof(arr[0]);

    getFreq(arr, length);
}
/*********** Main function End ***********/


/*********** Functions Definition Section Start ***********/
void getFreq(const unsigned int arr[], const unsigned int length){
    int freq[MAX_SIZE] = {0};

    printf("\n\n%d\n\n", freq[10]);
    for(i = 0; i < length; i++){
        counter = 1;
        for(j = i+1; j < length; j++){
            if(arr[i] == arr[j]){
                counter++;
                freq[j] = -1; // assign to(-1) indicate that this element has been counted
            }
        }
        /* If frequency of current element is not counted */
        if(freq[i] != -1){
            freq[i] = counter;
        }
    }

    printf("The Frequency of each element of an array : \n");
    for(i = 0; i < length; i++)
    {
        if(freq[i] != -1)
        {
            printf("%d occurs %d times\n", arr[i], freq[i]);
        }
    }
}
/*********** Functions Definition Section End   ***********/
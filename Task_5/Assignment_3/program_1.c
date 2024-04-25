/**
 *******************************************************************
 * @file           : program_1.c
 * @author         : Omar Hassan
 * @date           : April 22, 2024
 * @brief          : This file contains the soultion of Assignment_3_program_1
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Macro Definition Section Start ************/
#define MAX_SIZE                (5)
#define ASCENDING_ORDER         (1)
#define DESCENDING_ORDER        (0)  
#define SORT_ORDER              DESCENDING_ORDER
/*********** Macro Definition Section End ************/


/*********** Global Definition Section Start ************/
typedef unsigned int uint32_t;
uint32_t arr[MAX_SIZE];
uint32_t size = sizeof(arr) / sizeof(arr[0]);
/*********** Global Definition Section End ************/


/*********** Functions Decleration Section Start ***********/
void ascending_order(uint32_t arr[], uint32_t size);
void descending_order(uint32_t arr[], uint32_t size);
/*********** Functions Decleration Section End ***********/


/*********** Main function Start ***********/
int main(){

    printf("Enter an array of size %d:\n", size);
    for (uint32_t i = 0; i < size; i++)
    {
        scanf("%d", &arr[i]);
    }

    #ifdef SORT_ORDER
        if(SORT_ORDER == ASCENDING_ORDER) {
            ascending_order(arr, size);
        }
        else if(SORT_ORDER == DESCENDING_ORDER) {
            descending_order(arr, size);
        }
    #else
        #error "Unexceptecd Order !!!, Please define the order of sorting"
    #endif
    
    
}
/*********** Main function End ***********/


/*********** Functions Definition Section Start ***********/
void swap(uint32_t *x, uint32_t *y) {
    uint32_t temp = *x;
    *x = *y;
    *y = temp;
}

void ascending_order(uint32_t arr[], uint32_t size) {
    for (uint32_t i = 0; i < size-1; i++) 
    {
        for (uint32_t j = 0; j < size-i-1; j++) 
        {
            if (arr[j] > arr[j+1]) 
            {
                swap(&arr[j], &arr[j+1]);
            }
        }
    }

    printf("Array after sort in ascending order : \n");
    for (uint32_t i = 0; i < size; i++)
    {
        printf("%d\t", arr[i]);
    }
}

void descending_order(uint32_t arr[], uint32_t size) {
    for (uint32_t i = 0; i < size-1; i++) 
    {
        for (uint32_t j = 0; j < size-i-1; j++) 
        {
            if (arr[j] < arr[j+1]) 
            {
                swap(&arr[j], &arr[j+1]);
            }
        }
    }

    printf("Array after sort in descending order : \n");
    for (uint32_t i = 0; i < size; i++)
    {
        printf("%d\t", arr[i]);
    }
}
/*********** Functions Definition Section End   ***********/
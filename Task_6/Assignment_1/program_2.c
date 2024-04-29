/**
 *******************************************************************
 * @file           : program_2.c
 * @author         : Omar Hassan
 * @date           : April 22, 2024
 * @brief          : This file contains the soultion of Assignment_1_program_2
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Macro Section Start ************/
#define SIZE_MEMORY_1        (2)
#define SIZE_MEMORY_2        (2)
#define SIZE_MEMORY_3        (10) 
/*********** Macro Section End   ************/


/*********** Global Definition Section Start ************/
unsigned int* ptr1 = NULL;
unsigned int* ptr2 = NULL;
unsigned int* ptr3 = NULL;
/*********** Global Definition Section End ************/


/*********** Main function Start ***********/
int main(){
    printf("-------------------------------\n");
    /* Allocate a 20 byte memory space using malloc(size) */
    printf("ptr1 ==> 0x%X\n", ptr1);
    ptr1 = (unsigned int*)malloc((SIZE_MEMORY_1 * sizeof(unsigned int)));
    if(ptr1 != NULL){
        printf("First Memory Space :\n");
        for (size_t i = 0; i < SIZE_MEMORY_1; i++)
        {
            ptr1[i] = i;
            printf("0x%X = 0x%X\n", (ptr1 + i), *(ptr1 + i));
        }
    }else{
        printf("There is no space available\n");
    }
    printf("ptr1 ==> 0x%X\n-------------------------------\n", ptr1);
    free(ptr1);

    /* Allocate a 20 byte memory space using calloc(numOfElements, sizeOfElement) */
    printf("ptr2 ==> 0x%X\n", ptr2);
    ptr2 = (unsigned int*)calloc(SIZE_MEMORY_2, sizeof(unsigned int));
    if(ptr2 != NULL){
        printf("Second Memory Space :\n");
        for (size_t i = 0; i < SIZE_MEMORY_2; i++)
        {
            ptr2[i] = i;
            printf("0x%X = 0x%X\n", (ptr2 + i), *(ptr2 + i));
        }
    }else{
        printf("There is no space available\n");
    }
    printf("ptr2 ==> 0x%X\n-------------------------------\n", ptr2);


    /* Allocate the fourth memory space to 40 byte using realloc(memory, newSize) */
    printf("ptr3 ==> 0x%X\n", ptr3);
    ptr3 = (unsigned int*)calloc(ptr3, SIZE_MEMORY_3);
    if(ptr3 != NULL){
        printf("Third Memory Space :\n");
        for (size_t i = 0; i < SIZE_MEMORY_3; i++)
        {
            ptr3[i] = i;
            printf("0x%X = 0x%X\n", (ptr3 + i), *(ptr3 + i));
        }
    }else{
        printf("There is no space available\n");
    }
    printf("ptr3 ==> 0x%X\n-------------------------------\n", ptr3);


    free(ptr2);
    free(ptr3);

    /*
    - If the memory is limited, and we need to allocate bigger size there will be overflow on the stack.
    */
}
/*********** Main function End ***********/
/**
 *******************************************************************
 * @file           : program.c
 * @author         : Omar Hassan
 * @date           : April 19, 2024
 * @brief          : This file contains the soultion of Assignment_3
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Global Definition Section Start ************/
typedef struct {
    int id;
    char name[30];
    char class_id;
}test1;

typedef struct {
    char name[30];
    int id;
    char class_id;
}test2;

/*********** Global Definition Section End ************/


/*********** Main function Start ***********/
int main(){
    /* Struct will make the memory with 4 bytes as the biggest member type */
    /*
    for test1:
        size of id = 4(int)
        size of name = 30(char[30])
        size of class_id = 1(char)  + 1(padding) 

        total = 4 + 30 + 2 = 36
    */

   /*
    for test2:
        size of name = 30(char[30]) + 2(padding)
        size of id = 4(int)
        size of class_id = 1(char)  + 3(padding) 

        total = 32 + 4 + 4 = 40
    */
    printf("Size of tes1 = %d\n", sizeof(test1));
    printf("Size of tes2 = %d\n", sizeof(test2));

/* 
- yes it may be a diffrent value, and this occurs because padding.
- padding is the addition of some empty bytes of memory in the structure to naturally align the data members in the memory.
- This is because of the alignment requirements of various data types, every member of the structure should be naturally aligned. 
- The members of the structure are allocated sequentially in increasing order.
- To Reduce Structure Padding :
    1) Use #pragma pack(1) : at least packing at 1 byte
    2) Use __attribute__((packed))
    3) Declare the structure members in their increasing/decreasing order of size
*/
}
/*********** Main function End ***********/
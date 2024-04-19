/**
 *******************************************************************
 * @file           : program.c
 * @author         : Omar Hassan
 * @date           : April 19, 2024
 * @brief          : This file contains the soultion of Assignment_2_program_2
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Global Definition Section Start ************/
/* 
To Reduce Structure Padding :
    1) Use #pragma pack(1) : at least packing at 1 byte
    2) Use __attribute__((packed))
    3) Declare the structure members in their increasing/decreasing order of size
*/ 

typedef unsigned char uint_8t;

typedef struct __attribute__((packed)) {
    char *name;
    uint_8t age;
}info;

/*********** Global Definition Section End ************/


/*********** Main function Start ***********/
int main(){
    info person = {
        "Omar Hassan",
        21
    };

    info *ptr = &person;

    printf("Name : %s\n", ptr->name);
    printf("Age  : %d\n", ptr->age);
}
/*********** Main function End ***********/
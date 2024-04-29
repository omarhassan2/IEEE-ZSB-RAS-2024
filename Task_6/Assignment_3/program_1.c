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


/*********** Macro Section Start ************/
#define my_sizeof(type)     (char *)(&type + 1) - (char *)(&type) 
/*********** Macro Section End   ************/


/*********** Global Definition Section Start ************/
static inline size_t my_sizeof_inline(size_t type) {
    return (char *)(&type + 1) - (char *)(&type);
}
/*********** Global Definition Section End ************/


/*********** Main function Start ***********/
int main(){
    double var = 0;

    printf("The size of var using macros: %d bytes\n", my_sizeof(var));
    printf("The size of var using inline function: %d bytes\n", my_sizeof_inline(var));
}
/*********** Main function End ***********/

/*
Macro Function :
    - Macros are preprocessor directives. They are essentially text replacements that occur before compilation.
    - I can't make a validation for parameters.
    - Very hard for debuging

Inline Functio :
    - Inline functions are a feature of the C language that allows the compiler to insert the code of the function directly
      into the calling code rather than making a function call.
    - I can make a validation for parameters.
    - more easy for debuging
*/
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


/*********** Global Definition Section Start ************/
typedef struct {
    float real;
    float imag;
}complex_number;
/*********** Global Definition Section End ************/


/*********** Functions Decleration Section Start ***********/
void add_two_complex_numbers(complex_number* num1, complex_number* num2);
/*********** Functions Decleration Section End ***********/


/*********** Main function Start ***********/
int main(){
    complex_number num1 = {
        .real = 15.65,
        .imag = 4.67
    };
    complex_number num2 = {
        .real = 14.78,
        .imag = 1.36
    };
    printf("The sum of two complex numbers : \n");
    add_two_complex_numbers(&num1, &num2);
}
/*********** Main function End ***********/


/*********** Functions Definition Section Start ***********/
void add_two_complex_numbers(complex_number* num1, complex_number* num2) {
    printf("(%.2f + %.2fi) + (%.2f + %.2fi) = (%.2f + %.2fi)\n", 
    num1->real, num1->imag,     // print num1
    num2->real, num2->imag,     // print num2
    num1->real + num2->real,    // print the sum of two real parts
    num1->imag + num2->imag);   // print the sum of two imag parts
}
/*********** Functions Definition Section End   ***********/
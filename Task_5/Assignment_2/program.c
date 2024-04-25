/**
 *******************************************************************
 * @file           : program.c
 * @author         : Omar Hassan
 * @date           : April 22, 2024
 * @brief          : This file contains the soultion of Assignment_2
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Global Definition Section Start ************/
typedef enum {
    ADDITION = 43,
    SUBTRACTION = 45,
    MULTIPLICATION = 42,
    DIVISION = 47,
    AND = 38,
    OR = 124,
    NOT = 33
}operation;

unsigned int num1, num2;
char operator;
/*********** Global Definition Section End ************/


/*********** Main function Start ***********/
int main(){
    printf("Enter the first number  : ");
    scanf("%d", &num1);
    printf("Enter the second number : ");
    scanf("%d", &num2);

    printf("Enter the sign operations : ");
    fflush(stdin);
    operator = getchar();

    switch (operator)
    {
    case ADDITION:
        printf("%d + %d = %d\n", num1, num2, (num1+num2));
        break;
    case SUBTRACTION:
        printf("%d - %d = %d\n", num1, num2, (num1-num2));
        break;
    case MULTIPLICATION:
        printf("%d * %d = %d\n", num1, num2, (num1*num2));
        break;
    case DIVISION:
        printf("%d / %d = %d\n", num1, num2, (num1/num2));
        break;
    case AND:
        printf("%d & %d = %d\n", num1, num2, (num1&num2));
        break;
    case OR:
        printf("%d | %d = %d\n", num1, num2, (num1|num2));
        break;
    case NOT:
        printf("!num1 = %d\n!num2 = %d\n", !num1, !num2);
        break;
    default:
        break;
    }


    printf("Size of enum operation = %d\n", sizeof(operation));
    /*
    - The size of an enum in C depends on the underlying type of the enumeration 
    - By default, the underlying type is int
    - so the size will not change if we add any numbers of enumerators
    */
}
/*********** Main function End ***********/


/*********** Functions Definition Section Start ***********/

/*********** Functions Definition Section End   ***********/
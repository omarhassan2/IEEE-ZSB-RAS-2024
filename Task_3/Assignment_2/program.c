/**
 *******************************************************************
 * @file           : program.c
 * @author         : Omar Hassan
 * @date           : April 15, 2024
 * @brief          : This file contains the soultion of Assignment_2
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Macro Functions Section Start ***********/
#define ADDITION(num1,num2)         ((num1) + (num2))
#define SUBTRACTION(num1,num2)      ((num1) - (num2))
#define MULTIPLICATION(num1,num2)   ((num1) * (num2))
#define DIVISION(num1,num2)         ((num1) / (num2))

#define SELECT_OPERATION(num1, num2, signOperation) \
    (((signOperation) == '+') ? (ADDITION((num1), (num2))) : \
    (((signOperation) == '-') ? (SUBTRACTION((num1), (num2))) : \
    (((signOperation) == '*') ? (MULTIPLICATION((num1), (num2))) : \
    (((signOperation) == '/') ? (DIVISION((num1), (num2))) : 0))))

/*********** Macro Functions Section End ***********/


/*********** Functions Decleration Section Start ***********/
void userInterface(void);
/*********** Functions Decleration Section End ***********/


/*********** Global Variables Section Start ************/
unsigned char signOperation = 0;
unsigned short flag = 0; // flag = 2 to end program and flag = 1 to chose another operation
float num1, num2, result;
/*********** Global Variables  Section End   ************/


/*********** Main function Start ***********/
int main(){
    printf("\t\t\t ::::::::::::::::::::::::::::::::::::\n");
    printf("\t\t\t ::      Welcome To Calculator     ::\n");
    printf("\t\t\t ::::::::::::::::::::::::::::::::::::\n\n");
    userInterface();
    printf("Select an operation by it's sign\n");
    printf("---------------------------------\n");

    while (1)
    {   
        while (1)
        {
            printf("Enter the sign operation:\n");
            fflush(stdin); // clear buffer before take the sign, to neglect any possible error
            scanf("%c", &signOperation);

            if((signOperation == '+') || (signOperation == '-') || (signOperation == '*') || (signOperation == '/'))
            {   
                system("cls");
                break;
            }else{
                printf("Invalid choice, please try again with correct choice.\n");
            }
        }
            
        printf("Enter the first number  : ");scanf("%f", &num1);
        printf("Enter the second number : ");scanf("%f", &num2);

        result = SELECT_OPERATION(num1, num2, signOperation);

        printf("%.2f %c %.2f = %.2f\n", num1, signOperation, num2, result);
        printf("----------------------------\n");

        while (1)
        {   
            printf("\nDo you want to chose another operation or end program: \n1)Select another operation\n2)End program\n");
            scanf("%hu", &flag);
            
            if((flag == 2) || (flag == 1))
            {
                system("cls");
                break;
            }else{
                printf("Invalid choice, please try again with correct choice.\n");
            }
        }
        
        userInterface();
        if (flag == 2)
        {
            system("cls");
            printf("\t\t::::::::::::::::::::::::::::::::::::::::::::::\n");
            printf("\t\t::            The Program Ended             ::\n");
            printf("\t\t::::::::::::::::::::::::::::::::::::::::::::::\n");
            break;
        }
        else{/* Do Nothing */}
    }
}
/*********** Main function End ***********/


/*********** Functions Definition Section Start ***********/
void userInterface(void){
    printf("\t\t\t    :::::::::::::::::::::::::::::\n");
    printf("\t\t\t    :: The Signs Operations is ::\n");
    printf("\t\t\t    :::::::::::::::::::::::::::::\n");
    printf("\t\t\t    ::        Addition [+]     ::\n");
    printf("\t\t\t    ::       Subtraction [-]   ::\n");
    printf("\t\t\t    ::     Multiplication [*]  ::\n");
    printf("\t\t\t    ::        Division [/]     ::\n");
    printf("\t\t\t    :::::::::::::::::::::::::::::\n\n");
}
/*********** Functions Definition Section End   ***********/




/********************************************************************************************/
/*
Normal if, else if, else:
-------------------------
1) Used for conditional execution in C/C++.
2) Executes code based on the evaluation of a condition.
3) Conditions are evaluated at runtime.
4) Syntax :
    if (condition1) {
        // Code block executed if condition1 is true
    } else if (condition2) {
        // Code block executed if condition1 is false and condition2 is true
    } else {
        // Code block executed if all previous conditions are false
    }
*/

/*
Preprocessor directives #if, #elif, #else:
------------------------------------------
1) Used for conditional compilation in C/C++.
2) Conditions are evaluated during preprocessing, not at runtime.
3) Directives are processed by the preprocessor before actual compilation.
4) Syntax :
    #if condition1
        // Code block compiled if condition1 is true
    #elif condition2
        // Code block compiled if condition1 is false and condition2 is true
    #else
        // Code block compiled if all previous conditions are false
    #endif
*/

/*
The main difference lies in when the conditions are evaluated: 
normal if statements are evaluated at runtime, while preprocessor directives are evaluated during preprocessing.
*/
/********************************************************************************************/
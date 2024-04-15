/**
 *******************************************************************
 * @file           : program.c
 * @author         : Omar Hassan
 * @date           : April 15, 2024
 * @brief          : This file contains the soultion of Assignment_1
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Functions Decleration Section Start ***********/
float addition(float num1, float num2);
float subtraction(float num1, float num2);
float multiplication(float num1, float num2);
float division(float num1, float num2);

float selectOperation(float num1, float num2, unsigned char signOperation);
float (*operation)(float num1, float num2, unsigned char signOperation);

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

        result = operation(num1, num2, signOperation);
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
float addition(float num1, float num2){
    return (num1 + num2);
}

float subtraction(float num1, float num2){
    return (num1 - num2);
}

float multiplication(float num1, float num2){
    return (num1 * num2);
}

float division(float num1, float num2){
    return (num1 / num2);
}

float selectOperation(float num1, float num2, unsigned char signOperation){
    switch (signOperation)
    {
    case '+':
        return (addition(num1, num1));
        break;

    case '-':
        return (subtraction(num1, num1));
        break;

    case '*':
        return (multiplication(num1, num1));
        break;

    case '/':
        return (division(num1, num1));
        break;
    }
}

float (*operation)(float num1, float num2, unsigned char signOperation) = &selectOperation;

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
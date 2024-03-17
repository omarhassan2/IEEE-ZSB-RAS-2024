/**
 *******************************************************************
 * @file           : program.c
 * @author         : Omar Hassan
 * @date           : March 17, 2024
 * @brief          : This file contains the soultion of Assignment_2
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Global Decleration Section Start ***********/
int x = 0x5, y = 0x10, z = 0x15;
int *p = &x, *q = &y, *r = &z;
/*********** Global Decleration Section End ***********/


/*********** Functions Decleration Section Start ***********/
void printLabels();
/*********** Functions Decleration Section End ***********/


/*********** Main function Start ***********/
int main(){
    printLabels();

    printf("Swapping pointers:\n");
    int *temp = r;
    r = p;
    p = q;
    q = temp;

    printLabels();
}
/*********** Main function End ***********/


/*********** Functions Definition Section Start ***********/
void printLabels(){
    printf("x= 0x%X\ny= 0x%X\nz= 0x%X\n---------\n",x,y,z);
    printf("p= 0x%X\nq= 0x%X\nr= 0x%X\n---------\n",p,q,r);
    printf("*p= 0x%X\n*q= 0x%X\n*r= 0x%X\n---------\n",*p,*q,*r);
}
/*********** Functions Definition Section End   ***********/
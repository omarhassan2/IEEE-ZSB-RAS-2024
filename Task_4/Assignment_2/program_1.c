/**
 *******************************************************************
 * @file           : program.c
 * @author         : Omar Hassan
 * @date           : April 19, 2024
 * @brief          : This file contains the soultion of Assignment_2_program_1
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


typedef struct __attribute__((packed)) {
    int day;
    int month;
    int year;
}Date;

/*********** Global Definition Section End ************/


/*********** Main function Start ***********/
int main(){
    Date Date1, Date2;
    char date[11];

    printf("Enter first date(day/month/year)  : ");
    gets(date);
    sscanf(date, "%d/%d/%d", &Date1.day, &Date1.month, &Date1.year);

    printf("Enter second date(day/month/year) : ");
    gets(date);
    sscanf(date, "%d/%d/%d", &Date2.day, &Date2.month, &Date2.year);
    

    if ((Date1.day == Date2.day) && (Date1.month == Date2.month) && (Date1.year == Date2.year)) {
        printf("Dates are equal");
    }else {
        printf("Dates are not equal");  
    }
}
/*********** Main function End ***********/
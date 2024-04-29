/**
 *******************************************************************
 * @file           : program_1.c
 * @author         : Omar Hassan
 * @date           : April 22, 2024
 * @brief          : This file contains the soultion of Assignment_2_program_1
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Global Definition Section Start ************/
unsigned int time;
unsigned int hours;
unsigned int minutes;
unsigned int seconds;
/*********** Global Definition Section End ************/


/*********** Main function Start ***********/
int main(){
    printf("Enter time of format [hh:mm:ss] : ");
    scanf("%d:%d:%d", &hours, &minutes, &seconds);

    time = hours*3600 + minutes*60 + seconds;
    printf("Time[hh:mm:ss] : %02d:%02d:%02d\n", (time / 3600), ((time % 3600) / 60), (time % 60));
}
/*********** Main function End ***********/
/**
 *******************************************************************
 * @file           : program_2.c
 * @author         : Omar Hassan
 * @date           : April 22, 2024
 * @brief          : This file contains the soultion of Assignment_2_program_2
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
/*********** Includes Section End   ***********/


/*********** Macro Section Start ************/
#define MAX_SIZE    (100)
#define STOP_CODE   "!!"
/*********** Macro Section End   ************/


/*********** Global Definition Section Start ************/
char string[MAX_SIZE];
int char_counts[256] = {0}; // Array to store character ASCII
int i, j, isUnique;
/*********** Global Definition Section End ************/


/*********** Main function Start ***********/
int main(){
    while (1) {
        printf("Enter a string (type %s to stop): ", STOP_CODE);
        fflush(stdin); // clear buffer before read string (recommended)
        gets(string);

        /* stop when string match the stop code */
        if (strcmp(string, STOP_CODE) == 0) {
            break;
        }

        
        for (size_t i = 0; ((string[i] != '\0') && (string[i] != '\n')); i++) {
            char_counts[toupper(string[i])]++; 
        }

        printf("Unique characters: ");
        for (size_t i = 0; i < 256; i++) {
            if (char_counts[i] == 1) {
                printf("\'%c\'\t", i);
            }
        }
        printf("\n");

        /* Reset character counts for the next iteration */
        memset(char_counts, 0, sizeof(char_counts));
    }

    printf("Program Ended.\n");
}
/*********** Main function End ***********/
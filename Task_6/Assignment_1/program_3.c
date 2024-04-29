/**
 *******************************************************************
 * @file           : program_3.c
 * @author         : Omar Hassan
 * @date           : April 22, 2024
 * @brief          : This file contains the soultion of Assignment_1_program_3
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Global Definition Section Start ************/
unsigned int max_length;
char* name = NULL;
int freq[256] = {0}; // ASCII characters
 int max_freq;
char most_repeated_character;
/*********** Global Definition Section End ************/


/*********** Main function Start ***********/
int main(){
    printf("Please enter the maximum  length : ");
    scanf("%d", &max_length);

    name = (char*)calloc(max_length, sizeof(char));
    if(name != NULL){
        printf("Enter your name: ");
        fflush(stdin); // clear buffer before enter string value

        gets(name);
        printf("Your name: %s\n", name);

        for (size_t i = 0; name[i] != '\0'; i++) {
            freq[name[i]]++;
        }

        for (size_t i = 0; i < 256; i++) {
            if (freq[i] > max_freq) {
                max_freq = freq[i];
                most_repeated_character = (char)i;
            }
        }
        printf("The most repeated character is '%c' with frequency %d\n", most_repeated_character, max_freq);
    }else{
        printf("There is no space available\n");
    }

    free(name);
}
/*********** Main function End ***********/
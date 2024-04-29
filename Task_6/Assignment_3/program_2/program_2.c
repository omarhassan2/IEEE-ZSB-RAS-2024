/**
 *******************************************************************
 * @file           : program_2.c
 * @author         : Omar Hassan
 * @date           : April 22, 2024
 * @brief          : This file contains the soultion of Assignment_3_program_2
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
#include "Single_LinkedList.h"
/*********** Includes Section End   ***********/


/*********** Global Definition Section Start ************/
node_t *Head_List = NULL;
unsigned int data[100];
void *ptrData = NULL;
char choice;
unsigned int counter;
/*********** Global Definition Section End ************/


/*********** Main function Start ***********/
int main(){
    while (1) {
        printf("1) '+' to insert node\n2) '-' to delete node\n3) 'p' to print list\n4) 'x' to exit: ");
        printf("Enter your choice : ");
        scanf(" %c", &choice);

        switch (choice) {
            case '+':
                printf("Enter your data to add: ");
                scanf("%d", &data[counter]);
                ptrData = &data[counter++];
                Insert_Node_At_Beginning(&Head_List, ptrData);
                break;
            case '-':
                Delete_Node_At_Beginning(&Head_List);
                break;
            case 'p':
                Dislpay_All_Nodes(Head_List);
                break;
            case 'x':
                printf("Exiting program.\n");
                return 0;
            default:
                printf("Invalid choice. Please enter '+', '-', 'p', or 'x'.\n");
        }
    }
}
/*********** Main function End ***********/

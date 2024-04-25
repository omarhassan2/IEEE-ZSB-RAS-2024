/**
 *******************************************************************
 * @file           : program_1.c
 * @author         : Omar Hassan
 * @date           : April 22, 2024
 * @brief          : This file contains the soultion of Assignment_1_program_1
 *******************************************************************
 */


/*********** Includes Section Start ***********/
#include <stdio.h>
#include <stdlib.h>
/*********** Includes Section End   ***********/


/*********** Global Definition Section Start ************/
typedef unsigned int uint_32t;

typedef struct {
    uint_32t marks : 3; 
    uint_32t roll_number : 4;
    uint_32t age : 8; 
    char *name;
    char *address;
}student_info;

/*********** Global Definition Section End ************/


/*********** Functions Decleration Section Start ***********/
void displayStudents(student_info *students);
/*********** Functions Decleration Section End ***********/


/*********** Main function Start ***********/
int main(){
    student_info students[5];

    students[0].roll_number = 0;
    students[0].name = "Omar";
    students[0].address = "Zagazig";
    students[0].age = 21;
    students[0].marks = 5;

    students[1].roll_number = 1;
    students[1].name = "ali";
    students[1].address = "Zagazig";
    students[1].age = 21;
    students[1].marks = 4;

    students[2].roll_number = 2;
    students[2].name = "samy";
    students[2].address = "Zagazig";
    students[2].age = 21;
    students[2].marks = 3;

    students[3].roll_number = 3;
    students[3].name = "ahmed";
    students[3].address = "Zagazig";
    students[3].age = 21;
    students[3].marks = 2;

    students[4].roll_number = 4;
    students[4].name = "ziad";
    students[4].address = "Zagazig";
    students[4].age = 21;
    students[4].marks = 7;
    
    displayStudents(students);

    printf("---------------------\n");
    printf("Size of struct = %d\n", sizeof(student_info));
    /*
    Total size : 
        - marks + roll_number + age = 8
        - name = 8
        - address = 8
    */

   /* 
   - Bit fields cannot be used with pointers because an address might encompass more than one member. 
   - Arrays of bit fields are not supported
   - C does not allow arrays of bit fields.
   - data_type for bit-fields: It is an integer type that determines the bit-field value which is to be interpreted. 
   - The type may be int, signed int, or unsigned int.
   */

    
}
/*********** Main function End ***********/


/*********** Functions Definition Section Start ***********/
void displayStudents(student_info *students) {
    printf("\nStudents Information:\n");

    for (int i = 0; i < 5; ++i) {
        printf("Student %d:\n", i + 1);
        printf("Roll Number: %d\n", students[i].roll_number);
        printf("Name: %s\n", students[i].name);
        printf("Age: %d\n", students[i].age);
        printf("Address: %s\n", students[i].address);
        printf("Marks: %d\n", students[i].marks);
        printf("\n");
    }
}
/*********** Functions Definition Section End   ***********/
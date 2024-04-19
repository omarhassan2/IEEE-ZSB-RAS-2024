/**
 *******************************************************************
 * @file           : program.c
 * @author         : Omar Hassan
 * @date           : April 19, 2024
 * @brief          : This file contains the soultion of Assignment_1
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

typedef unsigned char uint_8t;

typedef struct __attribute__((packed)) {
    char *name;
    char *address;
    float marks;
    uint_8t roll_number;
    uint_8t age;
}student_info;

/*********** Global Definition Section End ************/


/*********** Functions Decleration Section Start ***********/
uint_8t displayStudents(student_info *students);
/*********** Functions Decleration Section End ***********/


/*********** Main function Start ***********/
int main(){

    /* Program 1 */
    student_info students[5];

    students[0].roll_number = 0;
    students[0].name = "Omar";
    students[0].address = "Zagazig";
    students[0].age = 21;
    students[0].marks = 20;

    students[1].roll_number = 1;
    students[1].name = "ali";
    students[1].address = "Zagazig";
    students[1].age = 21;
    students[1].marks = 10;

    students[2].roll_number = 2;
    students[2].name = "samy";
    students[2].address = "Zagazig";
    students[2].age = 21;
    students[2].marks = 11;

    students[3].roll_number = 3;
    students[3].name = "ahmed";
    students[3].address = "Zagazig";
    students[3].age = 21;
    students[3].marks = 14;

    students[4].roll_number = 4;
    students[4].name = "ziad";
    students[4].address = "Zagazig";
    students[4].age = 21;
    students[4].marks = 8;


    printf("\nStudents Information:\n");
    for (int i = 0; i < 5; ++i) {
        printf("Student %d:\n", i + 1);
        printf("Roll Number: %d\n", students[i].roll_number);
        printf("Name: %s\n", students[i].name);
        printf("Age: %d\n", students[i].age);
        printf("Address: %s\n", students[i].address);
        printf("Marks: %.2f\n", students[i].marks);
        printf("\n");
    }
    
    
    /* Program 2 */
    printf("number of students less than 12 = %d\n", displayStudents(students));

    

    
}
/*********** Main function End ***********/


/*********** Functions Definition Section Start ***********/
uint_8t displayStudents(student_info *students) {
    uint_8t num_of_students = 0;

    printf("\nStudents Information:\n");

    for (int i = 0; i < 5; ++i) {
        printf("Student %d:\n", i + 1);
        printf("Roll Number: %d\n", students[i].roll_number);
        printf("Name: %s\n", students[i].name);
        printf("Age: %d\n", students[i].age);
        printf("Address: %s\n", students[i].address);
        printf("Marks: %.2f\n", students[i].marks);
        printf("\n");

        if(students[i].marks < 12){
            num_of_students++;
        }
    }

    return num_of_students;
}
/*********** Functions Definition Section End   ***********/
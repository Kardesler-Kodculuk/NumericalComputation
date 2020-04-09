#include <stdio.h>



int main() {
    /* ---------- QUESTION IA ---------- */
    printf("Question IA:\n");
    printf("\tA - Representations\n");
    double number_one = 4.4;
    double number_two = 3.4;
    double number_three = 1.0;
    printf("\t\tFirst: %x\n\t\tSecond: %x\n\t\tThird: %x\n", *(unsigned long int*)&number_one, *(unsigned long int*)&number_two, *(unsigned long int*)&number_three);
    double a = 4.4 - 3.4;

    printf("\tB - Steps\n");
    printf("\t\tStep 1: %x\n", *(unsigned long int*)&a);
    double intermediate = 4.4 - 3.4 - 1.0;
    printf("\t\tStep 2: %x    %e\n", *(unsigned long int*)&(intermediate), 4.4 - 3.4 - 1.0);

    /* ---------- QUESTION II ---------- */
    return 0;
}

#include <stdio.h>


float lose_precision(float x, float y, float z) {
    return x - y - z;
}

static float lose_precision_two(float x, float y) {
    float answer = x - y;
    return answer;
}


int main() {
    /* ---------- QUESTION IA ---------- */
    printf("Question IA:\n");
    printf("\tA - Representations\n");
    const float number_one = 4.4f;
    const float number_two = 3.4f;
    const float number_three = 1.0f;
    printf("\t\tFirst: %x\n\t\tSecond: %x\n\t\tThird: %x\n", *(int*)&number_one, *(int*)&number_two, *(int*)&number_three);
    const float a = lose_precision_two(number_one, number_two);

    printf("\tB - Steps\n");
    printf("\t\tStep 1: %x\n", *(int*)&a);
    const float intermediate = lose_precision(number_one, number_two, number_three);
    printf("\t\tStep 2: %x    %e\n", *(int*)&(intermediate), 4.4 - 3.4 - 1.0);

    /* ---------- QUESTION II ---------- */
    return 0;
}
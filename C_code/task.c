#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

void method(const char *str, int do_output) {
    int N_count = 0, Z_count = 0, X_count = 0, T_count = 0, P_count = 0;
    for (int i = 0; i < strlen(str); ++i) {
        if (str[i] == 'N') {
            ++N_count;
        }
        if (str[i] == 'Z') {
            ++Z_count;
        }
        if (str[i] == 'X') {
            ++X_count;
        }
        if (str[i] == 'T') {
            ++T_count;
        }
        if (str[i] == 'P') {
            ++P_count;
        }
    }
    if (do_output == 1) {
        printf("\nResult:");
        printf("\nNumber of N: %d", N_count);
        printf("\nNumber of Z: %d", Z_count);
        printf("\nNumber of X: %d", X_count);
        printf("\nNumber of T: %d", T_count);
        printf("\nNumber of P: %d\n", P_count);
    }
}

void methodFile(const char *str, FILE *output_file) {
    int N_count = 0, Z_count = 0, X_count = 0, T_count = 0, P_count = 0;
    for (int i = 0; i < strlen(str); ++i) {
        if (str[i] == 'N') {
            ++N_count;
        }
        if (str[i] == 'Z') {
            ++Z_count;
        }
        if (str[i] == 'X') {
            ++X_count;
        }
        if (str[i] == 'T') {
            ++T_count;
        }
        if (str[i] == 'P') {
            ++P_count;
        }
    }
    fprintf(output_file, "\nResult:");
    fprintf(output_file, "\nNumber of N: %d", N_count);
    fprintf(output_file, "\nNumber of Z: %d", Z_count);
    fprintf(output_file, "\nNumber of X: %d", X_count);
    fprintf(output_file, "\nNumber of T: %d", T_count);
    fprintf(output_file, "\nNumber of P: %d\n", P_count);
    fclose(output_file);
}

void cmdMethod() {
    char string[128];
    printf("Your string (0 < length <= 128):");
    fflush(stdin);
    getchar();
    fgets(string, 128, stdin);
    method(string, 1);
}

void randomMethod(int length) {
    char string[128];
    srand(clock());
    for (int j = 0; j < length; ++j) {
        string[j] = (char) (64 + rand() % 119);
    }
    printf("Generated string: %s", string);
    method(string, 1);
}
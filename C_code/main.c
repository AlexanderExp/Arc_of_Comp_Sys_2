#include <stdio.h>
#include <string.h>
#include <time.h>

#define max_size 128

extern void method(const char *str, int do_output);
extern void methodFile(const char *str, FILE *output_file);
extern void randomMethod(int length);
extern void cmdMethod();

int main(int argc, char *argv[]) {
    // cmd arg + Timer
    if (argc == 2) {
        time_t t_start = clock();
        printf("String: %s\n", argv[1]);
        for (int i = 0; i < 25000000; ++i) {
            method(argv[1], 0);
        }
        time_t t_end = clock();

        printf("Time: %d ms", (int) (difftime(t_end, t_start)) / 1000);
        method(argv[1], 1);
        return 0;
    }
    // Get str from File + cmd args
    if (argc == 3) {
        char arr_str[256];
        FILE *input_stream = fopen(argv[1], "r");
        if (input_stream == NULL) {
            printf("Error opening file. Press any key to continue");
            getchar();
            return 0;
        }
        fgets(arr_str, sizeof(arr_str), input_stream);
        fclose(input_stream);

        FILE *output_stream = fopen(argv[2], "w");
        methodFile(arr_str, output_stream);
        return 0;
    }
    printf("Random input or through command line (1 - random, 2 - cmd):");
    int answer = 0;
    scanf("%d", &answer);
    if (answer == 1) {
        int length = 0;
        printf("Input length (0 < length <= %d):", max_size);
        scanf("%d", &length);
        if (length < 1 || length > max_size) {
            printf("Incorrect length = %d\n", length);
            return 0;
        }
        randomMethod(length);
        return 0;
    }
    cmdMethod();
    return 0;
}
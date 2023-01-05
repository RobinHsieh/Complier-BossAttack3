#include <stdio.h>


int factorial(int max) {
    int total = 1;
    if (max != 0) {
        int count;
        for (count = 1; count <= max; count++) {
            total *= count;
        }
    }
    return total;
}

int permutation(int m, int n) {
    return factorial(m) / factorial(m - n);
}

int combination(int m, int n) {
    return permutation(m, n) / factorial(n);
}

void print_binary(int x) {
    char binary[sizeof(int) * 8 + 1];
    int i;

    for (i = sizeof(int) * 8 - 1; i >= 0; i--) {
        binary[i] = (x & 1) ? '1' : '0';
        x >>= 1;
    }
    binary[sizeof(int) * 8] = '\0';

    printf("%s\n", binary);
}

int main() {
    int hi;

    hi = -2147483648;
    print_binary(hi);

    hi = ~ hi;
    print_binary(hi);

    hi = -1;
    print_binary(hi);

    hi = ~hi;
    print_binary(hi);

    return 0;
}

#include <stdio.h>

#define FACTORIAL(n) \
    ({ \
        int result = 1; \
        for (int i = 1; i <= (n); ++i) { \
            result *= i; \
        } \
        result; \
    })

#define SUM_OF_NATURAL_NUMBERS(n) \
    ((n) * ((n) + 1) / 2)

int main() {
    int n = 5 , x = 10;
    int factorial = FACTORIAL(n);
    int sum = SUM_OF_NATURAL_NUMBERS(x);
    printf("Factorial of %d is %d\n", n, factorial);
    printf("Sum of natural numbers till %d is %d\n", x, sum);
    return 0;
}

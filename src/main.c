#include <stdio.h>
#include <stdbool.h>
#include "primes.h"

int main() {
    char printbuf[128];
    int factors[20];
    int num;
    for(int i = 1, p = 2; i < 41; i++) {
        printf("%3d ", p);
        if(i % 10 == 0) printf("\n");
        p = get_next_prime(p);
    }
    printf("\n");
    for(int i = 30; i < 50; i++) {
        prime_factors(factors, &num, i);
        printf("prime factors of %d: %s\n",
               i, iarr_to_str(printbuf, factors, num)
              );
    }
    return 0;
}

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

double RaizCubica(double);
double NovaCaixa(double);

#define chao(x) ((int)(x))
#define abs(x) ((x) < 0 ? -(x) : (x))

double correct_RaizCubica(double x) {
    if (abs(x) <= 1e-8) {
        return 0;
    }

    // n, n - 1
    double r[2] = { x, 0 };

    while (abs(r[1] - r[0]) > 1e-8) {
        r[1] = r[0];
        r[0] = 2.0 * r[1]/3.0 + x / (3.0 * r[1] * r[1]);
    }

    return r[0];
}

double correct_NovaCaixa(double caixa) {
    double rifa = 9821.0 * correct_RaizCubica(caixa) + 0.211327;
    return (rifa - chao(rifa));
}

int test_main() {
    srandom(time(NULL));

    int errs = 0;
    // Test RaizCubica:
    for (int i = 0; i < 10000; i++) {
        double x = (double) random() / (double) 9821.0;
        double expected = correct_RaizCubica(x);
        double got = RaizCubica(x);

        if (abs(expected - got) > 1e-10) {
            printf("Error on test % 4d expected %.10f got %.10f erro %.5e\n", i, expected, got, abs(expected - got));
            errs++;
        }
    }
    printf("Done with %d errors.\n", errs);

    double correct_caixa = 0.12345;
    double caixa = 0.12345;
    errs = 0;

    for (int i = 0; i < 2000000; i++) {
        correct_caixa = correct_NovaCaixa(correct_caixa);
        caixa = NovaCaixa(caixa);

        if (abs(caixa - correct_caixa) > .1) {
            // printf("%d\n", i);
            errs++;
            // break;
        }
    }

    printf("Greater than .999 difference %d\n", errs);

    return 0;
}

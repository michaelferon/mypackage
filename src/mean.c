#include <R.h>
void mean(double* x, int* n, double* out) {
    *out = 0;
    for (int i = 0; i < *n; i++) { *out += x[i]; }
    *out /= *n;
}

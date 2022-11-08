#include <omp.h>
#include <stdio.h>
#define size 100000
double a[size], b[size];
int main() {
  // init vectors
  for (int i = 0; i < size; i++) {
    a[i] = 1.0 / ((double)(size - i));
    b[i] = a[i] * a[i];
  }
  // compute dot product
  double dot = 0;
#pragma omp parallel for reduction(+ : dot)
  for (int i = 0; i < size; i++) {
    dot += a[i] * b[i];
  }
  printf("Dot is %18.16f\n", dot);
}

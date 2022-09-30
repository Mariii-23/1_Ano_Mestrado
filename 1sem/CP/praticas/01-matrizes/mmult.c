
#include <stdio.h>
#include <stdlib.h>

#ifndef size
#define size 128
#endif

double *A, *B, *C;

void alloc() {
  A = (double *)malloc(size * size * sizeof(double));
  B = (double *)malloc(size * size * sizeof(double));
  C = (double *)malloc(size * size * sizeof(double));
}

void init() {
  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      A[i * size + j] = rand();
      B[i * size + j] = rand();
    }
  }
}

void mmult() {
  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      C[i * size + j] = 0;
      for (int k = 0; k < size; k++) {
        C[i * size + j] += A[i * size + k] * B[k * size + j];
      }
    }
  }
}

int main() {
  alloc();
  init();
  mmult();
  printf("%f\n", C[size / 2 + 5]);
}

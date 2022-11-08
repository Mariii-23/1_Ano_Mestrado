#include <omp.h>
#include <stdio.h>

double f(double a) { return (4.0 / (1.0 + a * a)); }

double pi = 3.141592653589793238462643;

int main() {
  double mypi = 0;
  int n = 1000000000; // number of points to compute
  float h = 1.0 / n;
  double mypi_local = 0;

#pragma omp parallel for reduction(+ : mypi)
  for (int i = 0; i < n; i++) {

    /* mypi_local = mypi_local + f(i * h); */
    mypi += f(i * h);
  }

  /* #pragma omp critical */
  /*   mypi += mypi_local; */

  mypi = mypi * h;
  printf(" pi = %.10f \n", mypi);
}

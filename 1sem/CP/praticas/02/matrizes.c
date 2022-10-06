#include <stdio.h>
#include <stdlib.h>
#include <time.h>

static size_t SIZE = 512;

float **createMatrix(size_t rows, size_t cols) {
  float **matrix = (float **)malloc(rows * sizeof(float *));

  for (size_t i = 0; i < rows; i++) {
    matrix[i] = (float *)malloc(sizeof *matrix * cols);
  }
  return matrix;
}

void freeMatrix(float **matrix, size_t rows) {
  for (size_t i = 0; i < rows; i++) {
    free(matrix[i]);
  }
  free(matrix);
}

void initRandom(float **matrix, size_t rows, size_t cols) {
  for (size_t r = 0; r < rows; r++) {
    for (size_t c = 0; c < cols; c++) {
      matrix[r][c] = (float)rand();
    }
  }
}

void printMatrix(float **matrix, size_t rows, size_t cols) {
  for (size_t r = 0; r < rows; r++) {
    for (size_t c = 0; c < cols; c++) {
      printf("%f ", (double) matrix[r][c]);
    }
    printf("\n");
  }
}

float **transpostMatrix(float **matrix, size_t rows, size_t cols) {
  float **transpost = createMatrix(rows, rows);

  for(size_t i = 0; i < cols; i++){
      for(size_t j = 0; j < rows; j++){
        transpost[j][i] = matrix[i][j];
      }
   }
  return transpost;
}

float **multipleMatrix(float **a, float **b, size_t rows, size_t cols) {
  float **matrix = createMatrix(rows, rows);

  float **b_transpost = transpostMatrix(b, rows,cols);

  for (size_t i = 0; i < rows; i++) {
    for (size_t j = 0; j < rows; j++) {
      float count = 0;

      for (size_t l = 0; l < cols; l++) {
        count += a[i][l] * b_transpost[j][l];
      }

        matrix[i][j] = count;
    }
  }

  freeMatrix(b_transpost, rows);

  return matrix;
}

int main(void) {
  srand((unsigned int) time(0));
  float **matrix = createMatrix(SIZE, SIZE);
  float **matrixB = createMatrix(SIZE, SIZE);

  initRandom(matrix, SIZE, SIZE);
  /* printfMatrix(matrix, SIZE, SIZE); */
  /* printff("\n"); */

  initRandom(matrixB, SIZE, SIZE);
  /* printfMatrix(matrixB, SIZE, SIZE); */
  /* printff("\n"); */

  float **multMatrix = multipleMatrix(matrix, matrixB, SIZE, SIZE);
  /* printfMatrix(multMatrix, SIZE, SIZE); */
  /* printff("\n"); */
  freeMatrix(multMatrix, SIZE);

  freeMatrix(matrix, SIZE);
  freeMatrix(matrixB, SIZE);
  return 0;
}

#include<stdio.h>
#include<stdlib.h>


double **A, **B, **C;

void alloc(int size) {
    A = (double **) malloc(size*sizeof(double*));
    B = (double **) malloc(size*sizeof(double*));
    C = (double **) malloc(size*sizeof(double*));
    for(int i=0; i<size; i++){
      A[i] = (double *) malloc(size*sizeof(double));
      B[i] = (double *) malloc(size*sizeof(double));
      C[i] = (double *) malloc(size*sizeof(double));
    
    }
}
void alloc_aligned(int size) {
    A = (double **) aligned_alloc(64,size*sizeof(double*));
    B = (double **) aligned_alloc(64,size*sizeof(double*));
    C = (double **) aligned_alloc(64,size*sizeof(double*));
    for(int i=0; i<size; i++){
      A[i] = (double *) aligned_alloc(64,size*sizeof(double));
      B[i] = (double *) aligned_alloc(64,size*sizeof(double));
      C[i] = (double *) aligned_alloc(64,size*sizeof(double));
    
    }
}

void init(int size) {
    for(int i=0; i<size; i++) {
        for(int j=0; j<size; j++) {
            A[i][j] = rand();
            B[i][j] = rand();
        }
    }
}

void mmult(int size) {
    for(int i=0; i<size; i++) {
        for(int j=0; j<size; j++) {
            C[i][j] = 0;
            //for(int k=0; k<size; k++) {
            for(int k=0; k<size; k+=2) {
                C[i][j] += A[i][k] * B[k][j];
                C[i][j] += A[i][k+1] * B[k+1][j];
            }
        }
    }
}

int main() {
    int size=512;
    //alloc(size);
    alloc_aligned(size);
    init(size);
    mmult(size);
    printf("%f\n", C[0][size/2+5]);
}

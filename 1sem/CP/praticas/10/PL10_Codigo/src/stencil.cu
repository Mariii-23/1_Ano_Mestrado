#include "stencil.h"

#define NUM_BLOCKS 128
#define NUM_THREADS_PER_BLOCK 256
#define SIZE NUM_BLOCKS*NUM_THREADS_PER_BLOCK

using namespace std;

__global__ 
void stencilKernel (float *a, float *c) {
	int id = blockIdx.x * blockDim.x + threadIdx.x;

	// initialise the array with the results
	c[id] = 0;

	// iterate through the neighbours required to calculate
	// the values for the current position of c
	//for (int n = ?; n <= ?; n++) {
	//	??
	//}

}

void stencil (float *a, float *c) {
	chrono::steady_clock::time_point begin = chrono::steady_clock::now();

	for (int i = 0; i < SIZE; i++) {
		// considers 4 neighbours
		for (int n = -2; n <= 2; n++) {
			if ((i + n >= 0) && (i + n < SIZE))
				c[i] += a[i + n];
		}
	}

	chrono::steady_clock::time_point end = chrono::steady_clock::now();
	cout << endl << "Sequential CPU execution: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << " microseconds" << endl << endl;
}

void launchStencilKernel (float *a, float *c) {
	// pointers to the device memory
	float *da, *dc;
	// declare variable with size of the array in bytes
	int bytes = SIZE * sizeof(float);

	// allocate the memory on the device
	cudaMalloc ((void**) &da, bytes);
	cudaMalloc (??);
	checkCUDAError("mem allocation");

	// copy inputs to the device
	cudaMemcpy (??);
	checkCUDAError("memcpy h->d");

	// launch the kernel
	startKernelTime ();
	stencilKernel <<< NUM_THREADS_PER_BLOCK, NUM_BLOCKS >>> (??, ??);
	stopKernelTime ();
	checkCUDAError("kernel invocation");

	// copy the output to the host
	cudaMemcpy (??);
	checkCUDAError("memcpy d->h");

	// free the device memory
	cudaFree(da);
	cudaFree(dc);
	checkCUDAError("mem free");
}

int main( int argc, char** argv) {
	// arrays on the host
	float a[SIZE], b[SIZE], c[SIZE];

	// initialises the array
	for (unsigned i = 0; i < SIZE; ++i)
		a[i] = (float) rand() / RAND_MAX;

	stencil (a, b);
	
	launchStencilKernel (a, c);

	return 0;
}

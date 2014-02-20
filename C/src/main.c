/*
 * main.c
 *
 *  Created on: 11/02/2014
 *      Author: Mauro
 */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

const int N = 100;

int main() {
	double 	A[N][N],
			B[N][N],
			C[N][N];

	int i, j, k;
	clock_t tStart, tStop;

	for (i = 0; i < N; i++) {
		for (j = 0; j < N; j++) {
			A[i][j] = 0.5;
			B[i][j] = N;
			C[i][j] = 0;
		}
	}

	tStart = clock();

	for (i = 0; i < N; i++) {
		for (j = 0; j < N; j++) {
			for (k = 0; k < N; k++) {
				C[i][j] += A[i][j] * B[j][k];
			}
		}
	}

	tStop = clock();

	printf("%f ms.\n\n", (double)(tStop - tStart) / CLOCKS_PER_SEC * 1000);

//	for (i = 0; i < N; i++) {
//		printf("[");
//		for (j = 0; j < N; j++) {
//			printf("%0.1f", C[i][j]);
//			if(j < N - 1){
//				printf(", ");
//			}
//		}
//		printf("]\n");
//	}

	return 0;
}

/*
 * main.c
 *
 *  Created on: 11/02/2014
 *      Author: Mauro
 */

#include<stdio.h>
#include<stdlib.h>

const int N = 2;

int main() {
	double 	A[N][N],
			B[N][N],
			C[N][N];

	int i, j, k;

	for (i = 0; i < N; i++) {
		for (j = 0; j < N; j++) {
			A[i][j] = 0.5;
			B[i][j] = N;
			C[i][j] = 0;
		}
	}

	for (i = 0; i < N; i++) {
		for (j = 0; j < N; j++) {
			for (k = 0; k < N; k++) {
				C[i][j] += A[i][j] * B[j][k];
			}
		}
	}

	for (i = 0; i < N; i++) {
		for (j = 0; j < N; j++) {
			printf("%f\t", C[i][j]);
		}
		printf("\n");
	}

	return 0;
}

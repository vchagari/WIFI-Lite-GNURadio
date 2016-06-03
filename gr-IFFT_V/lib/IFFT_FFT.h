#ifndef __FFT_V_H__
#define __FFT_V_H__

/* function prototypes */

void fft_v(int N, float (*x)[2], float (*X)[2]);
void fft_rec(int N, int offset, int delta, float (*x)[2], float (*X)[2], float (*XX)[2]);
void ifft_v(int N, float (*x)[2], float (*X)[2]);
void OfdmIfft(int num, const float idata[], float odata[]);

#endif


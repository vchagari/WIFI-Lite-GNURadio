/* -*- c++ -*- */
/* 
 * Copyright 2015 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <gnuradio/io_signature.h>
#include "IFFT_ff_impl.h"
#define TWO_PI (6.2831853071795864769252867665590057683943L)
#include "IFFT_FFT.h"
#define IFFT_N 64
//#define DEBUG 1 

void fft_v(int N, float (*x)[2], float (*X)[2])
{
  	/* Declare a pointer to scratch space. */

	int i;

	float (*XX)[2] =  (float (*)[2]) malloc(2 * N * sizeof(float));

/*
	for(i=0;i<2;i++)
	{
	 (*XX)[i] =  *Xx;
	}
  
	/* Calculate FFT by a recursion. */
	
  	fft_rec(N, 0, 1, x, X, XX);
	
  	/* Free memory. */
  	free(XX);

}	
	
    /* FFT recursion */
void fft_rec(int N, int offset, int delta,
             float (*x)[2], float (*X)[2], float (*XX)[2])
{
  int N2 = N/2;            /* half the number of points in FFT */
  int k;                   /* generic index */
  double cs, sn;           /* cosine and sine */
  int k00, k01, k10, k11;  /* indices for butterflies */
  double tmp0, tmp1;       /* temporary storage */

  if(N != 2)  /* Perform recursive step. */
    {
      /* Calculate two (N/2)-point DFT's. */
      fft_rec(N2, offset, 2*delta, x, XX, X);
      fft_rec(N2, offset+delta, 2*delta, x, XX, X);

      /* Combine the two (N/2)-point DFT's into one N-point DFT. */
      for(k=0; k<N2; k++)
        {
          k00 = offset + k*delta;    k01 = k00 + N2*delta;
          k10 = offset + 2*k*delta;  k11 = k10 + delta;
          cs = cos(TWO_PI*k/(double)N); sn = sin(TWO_PI*k/(double)N);
          tmp0 = cs * XX[k11][0] + sn * XX[k11][1];
          tmp1 = cs * XX[k11][1] - sn * XX[k11][0];
          X[k01][0] = XX[k10][0] - tmp0;
          X[k01][1] = XX[k10][1] - tmp1;
          X[k00][0] = XX[k10][0] + tmp0;
          X[k00][1] = XX[k10][1] + tmp1;
         }
    }
  else  /* Perform 2-point DFT. */
    {
      k00 = offset; k01 = k00 + delta;
      X[k01][0] = x[k00][0] - x[k01][0];
      X[k01][1] = x[k00][1] - x[k01][1];
      X[k00][0] = x[k00][0] + x[k01][0];
      X[k00][1] = x[k00][1] + x[k01][1];
    }

}

void ifft_v(int N, float (*x)[2], float (*X)[2])
{
   int N2 = N/2;       /* half the number of points in IFFT */
  int i;              /* generic index */
  double tmp0, tmp1;  /* temporary storage */

  /* Calculate IFFT via reciprocity property of DFT. */

  fft_v(N, X, x);
  x[0][0] = x[0][0]/N;    x[0][1] = x[0][1]/N;
  x[N2][0] = x[N2][0]/N;  x[N2][1] = x[N2][1]/N;
  for(i=1; i<N2; i++)
    {
      tmp0 = x[i][0]/N;       tmp1 = x[i][1]/N;
      x[i][0] = x[N-i][0]/N;  x[i][1] = x[N-i][1]/N;
      x[N-i][0] = tmp0;       x[N-i][1] = tmp1;
    }
}


/*
void OfdmIfft(int num, const float idata[], float odata[]) {
   float (*x)[2];
   float (*X)[2];

   x = (float (*)[2])idata;
   X = (float (*)[2])odata;

   ifft_v(num, X, x);


   odata = (float *)X;	

}

*/

namespace gr {
  namespace IFFT_V {

    IFFT_ff::sptr
    IFFT_ff::make(int IFFTSize)
    {
      return gnuradio::get_initial_sptr
        (new IFFT_ff_impl(IFFTSize));
    }

    /*
     * The private constructor
     */
    IFFT_ff_impl::IFFT_ff_impl(int IFFTSize)
      : gr::block("IFFT_ff",
              gr::io_signature::make(1,1, sizeof(float)),
              gr::io_signature::make(1,1, sizeof(float))),
	d_IFFTSize(IFFTSize)
    {}

    /*
     * Our virtual destructor.
     */
    IFFT_ff_impl::~IFFT_ff_impl()
    {
    }

    void
    IFFT_ff_impl::forecast (int noutput_items, gr_vector_int &ninput_items_required)
    {
        /* <+forecast+> e.g. ninput_items_required[0] = noutput_items */
    }


    int
    IFFT_ff_impl::general_work (int noutput_items,
                       gr_vector_int &ninput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
    {
        float *in  = ( float *) input_items[0];
        float *out = (float *) output_items[0];
	int N = d_IFFTSize;	
	int generated_output_data=0;
	int i,j,z=0;	

	float (*x)[2];
   	float (*X)[2];


   	x = (float (*)[2])in;
   	X = (float (*)[2])out;

	 
	if(ninput_items[0] > 0) // if receive data, start processing
        
	{
		
		for(i=0;i<IFFT_N;i++)
        	{
                	for(j=0;j<2;j++)
                	{	
                        	x[i][j]=in[z];
#ifdef DEBUG
                        	printf("%f,",x[i][j]);
#endif
                        	z++;
                	}

        	}
		z=0;


#ifdef DEBUG 
		printf("\nInput Data to IFFT\n");

	        for(i=0;i<IFFT_N;i++)
                {
                        for(j=0;j<2;j++)
                        {
				printf("%f,",x[i][j]);
			}

		}

#endif

  
		ifft_v(IFFT_N, X, x);
	
		for(i=0;i<IFFT_N;i++)
        	{
                	for(j=0;j<2;j++)
                	{
                        	out[z]=X[i][j];
				generated_output_data++;
                       	 	z++;
                	}

        	}
		z=0;

 			
#ifdef DEBUG	
		printf("\nIFFT output\n");
		for(i=0;i<IFFT_N;i++)
        	{
                        for(j=0;j<2;j++)
                        {
                                printf("%f,",X[i][j]);
                                z++;
                        }

        	}

		printf("\n Data stored in output buffer\n");		
		for(i=0;i<IFFT_N*2;i++)
		{		
			printf("%f,",out[i]);
		}

#endif 



#ifdef DEBUG
	printf("\nno of output generated:%d\n", generated_output_data);
#endif 

	}
        // Tell runtime system how many input items we consumed on each input stream.
        consume_each (ninput_items[0]);

        // Tell runtime system how many output items we produced.
        return generated_output_data;
    }

  } /* namespace IFFT_V */
} /* namespace gr */


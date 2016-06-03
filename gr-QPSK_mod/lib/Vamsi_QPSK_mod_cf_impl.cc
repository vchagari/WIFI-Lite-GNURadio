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

#include "stdio.h"
#include "stdlib.h"
#ifdef HAVE_CONFIG_H
#include "config.h"
#endif
#define PM1 sqrt(2)/2
#define PM2 -sqrt(2)/2

#include <gnuradio/io_signature.h>
#include "Vamsi_QPSK_mod_cf_impl.h"
//#define DEBUG 1


namespace gr {
  namespace QPSK_mod {

    Vamsi_QPSK_mod_cf::sptr
    Vamsi_QPSK_mod_cf::make(int Inputlen)
    {
      return gnuradio::get_initial_sptr
        (new Vamsi_QPSK_mod_cf_impl(Inputlen));
    }

    /*
     * The private constructor
     */
    Vamsi_QPSK_mod_cf_impl::Vamsi_QPSK_mod_cf_impl(int Inputlen)
      : gr::block("Vamsi_QPSK_mod_cf",
              gr::io_signature::make(1,1, sizeof(char)),
              gr::io_signature::make(1,1, sizeof(float))),
	d_Inputlen(Inputlen)
    {}

    /*
     * Our virtual destructor.
     */
    Vamsi_QPSK_mod_cf_impl::~Vamsi_QPSK_mod_cf_impl()
    {
    }

    void
    Vamsi_QPSK_mod_cf_impl::forecast (int noutput_items, gr_vector_int &ninput_items_required)
    {
        /* <+forecast+> e.g. ninput_items_required[0] = noutput_items */
    }

    int
    Vamsi_QPSK_mod_cf_impl::general_work (int noutput_items,
                       gr_vector_int &ninput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
    {
        const char *in = (const char *) input_items[0];
        float *out = (float *) output_items[0];
	int generated_output_data=0;
	int i,j;
	char Dec_Num[d_Inputlen/2];
	float QPSK_real[d_Inputlen/2],QPSK_img[d_Inputlen/2];	
	int position[32] = {6,7,14,15,22,23,30,31,38,39,46,47,54,55,62,63,70,71,78,79,86,87,94,95,102,103,110,111,118,119,126,127};
	float pilot_data[32] = {-1,1,1,1,1,1,1,1,-1,1,1,1,1,1,1,1,-1,1,1,1,1,1,1,1,-1,1,1,1,1,1,1,1};
	int No_pilotdata =16;
	int pilot_symlen = 32;
	int lenth_data = 96 + pilot_symlen;
	float outb[d_Inputlen+pilot_symlen];


        // Do <+signal processing+>

	if(ninput_items[0] > 0) // if receive data, start processing
        {
		for (j=0,i=0; j < d_Inputlen; j=j+2)
		{
    			if (in[j] == 0 && in[j + 1] == 0){ Dec_Num[i] = 0; }
    			else if (in[j] == 0 && in[j + 1] == 1){ Dec_Num[i] = 1; }
    			else if (in[j] == 1 && in[j + 1] == 0){ Dec_Num[i] = 2; }
    			else if (in[j] == 1 && in[j + 1] == 1){ Dec_Num[i] = 3; }
			i++;

		}
	
		for(i=0; i<d_Inputlen/2; i++)
		{	
		//      printf("%d,", Dec_Num[i]);
        		if (Dec_Num[i] == 0){
                		QPSK_real[i]  = PM2;
                		QPSK_img[i] =  PM2;
                	}
       		 	else if (Dec_Num[i] == 1){
                		QPSK_real[i] = PM2;
                		QPSK_img[i]= PM1;
                	}
        		else if (Dec_Num[i] == 2){
                		QPSK_real[i] = PM1;
                		QPSK_img[i]= PM1;
               	 	}
        		else if (Dec_Num[i] == 3){
                		QPSK_real[i]= PM1;
                		QPSK_img[i]= PM2;
                	}
/*
#ifdef DEBUG 
	
		printf("%f,%f,",QPSK_real[i],QPSK_img[i]);
#endif		
*/
		}
		
		for(i=0,j=0;i<d_Inputlen;i=i+2)
         	{
                	outb[i] = QPSK_real[j];
                	outb[i+1] = QPSK_img[j];
                	j++;
			generated_output_data++;
			generated_output_data++;
         	}

		for(i=0; i<pilot_symlen; i++) 
		{	
			for (j = lenth_data - 1; j >= position[i] - 1; j--)
			{
      				outb[j+1] = outb[j];
			}
 		outb[position[i]] = pilot_data[i];
		generated_output_data++;
   		}

		for(i=0;i<d_Inputlen+pilot_symlen;i++)
		{
			out[i] = outb[i];
			
		}
	
#ifdef DEBUG
	
	printf("\nLength of data after pilot insertion : %d \n",generated_output_data);
	
	for(i=0;i<d_Inputlen+pilot_symlen;i++)
                {                
	        printf("%f,",out[i]);

                }
#endif

	}

        // Tell runtime system how many input items we consumed on
        // each input stream.
        consume_each (ninput_items[0]);

        // Tell runtime system how many output items we produced.
        return generated_output_data;
    }

  } /* namespace QPSK_mod */
} /* namespace gr */


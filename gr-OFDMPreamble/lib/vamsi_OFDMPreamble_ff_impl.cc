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
#include <gnuradio/io_signature.h>
#include "vamsi_OFDMPreamble_ff_impl.h"
#include <stdio.h>
#define PREAMBLE_LEN 322
//#define DEBUG 1

namespace gr {
  namespace OFDMPreamble {

    vamsi_OFDMPreamble_ff::sptr
    vamsi_OFDMPreamble_ff::make(int Indatalen)
    {
      return gnuradio::get_initial_sptr
        (new vamsi_OFDMPreamble_ff_impl(Indatalen));
    }

    /*
     * The private constructor
     */
    vamsi_OFDMPreamble_ff_impl::vamsi_OFDMPreamble_ff_impl(int Indatalen)
      : gr::block("vamsi_OFDMPreamble_ff",
              gr::io_signature::make(1, 1, sizeof(float)),
              gr::io_signature::make(1, 1, sizeof(gr_complex))),
	d_Indatalen(Indatalen)
    {}

    /*
     * Our virtual destructor.
     */
    vamsi_OFDMPreamble_ff_impl::~vamsi_OFDMPreamble_ff_impl()
    {
    }

    void
    vamsi_OFDMPreamble_ff_impl::forecast (int noutput_items, gr_vector_int &ninput_items_required)
    {
        /* <+forecast+> e.g. ninput_items_required[0] = noutput_items */
    }

    int
    vamsi_OFDMPreamble_ff_impl::general_work (int noutput_items,
                       gr_vector_int &ninput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
    {
        const float *in = (const float *) input_items[0];
        gr_complex *out = (gr_complex *) output_items[0];
	int preLen = PREAMBLE_LEN;
        int generated_output_data = 0;
        int scal = 4;
	int i,j=0;
	float out1[((preLen*2)+(d_Indatalen*2))*2];

        // Do <+signal processing+>

	 if(ninput_items[0] > 0) // if receive data, start processing
         {

		for(i=0;i<(((preLen*2)+(d_Indatalen*2))*2);i++)
		{			
			out1[i]= 0.000;
		}

                for(i=0; i<preLen; i++)
                {
                        out1[i] = short_pre[i] * scal;
                        out1[i+preLen] = long_pre[i] * scal;
                //      printf("%f,%f,",out.real[i],out.imag[i]);
                       // generated_output_data++;
                        //generated_output_data++;
                }

                for(i=0; i<d_Indatalen*2; i++)
                {
                        out1[i+(preLen*2)] = in[i] * scal;
                        //generated_output_data++;
                }

		for(i=0;i<((preLen*2)+(d_Indatalen*2))*2;i=i+2)
		{			
			out[j].real() = out1[i];
			out[j].imag() = out1[i+1];
			j++;
			generated_output_data++;
		}


	
#ifdef DEBUG
       		printf("\nPreamble genereated:%d\n",generated_output_data);

        	for(i=0;i<((preLen)+(d_Indatalen));i++)
        	{

                	printf("%f,%f,",out[i].real(),out[i].imag());
        	}

#endif


        }


        // Tell runtime system how many input items we consumed on
        // each input stream.
        consume_each (ninput_items[0]);

        // Tell runtime system how many output items we produced.
        return generated_output_data;
    }

  } /* namespace OFDMPreamble */
} /* namespace gr */


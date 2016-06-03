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

#include <gnuradio/io_signature.h>
#include "vamsi_interleaver_cc_impl.h"
//#define DEBUG 1

namespace gr {
  namespace my_interleaver {

    vamsi_interleaver_cc::sptr
    vamsi_interleaver_cc::make(int Ninputs)
    {
      return gnuradio::get_initial_sptr
        (new vamsi_interleaver_cc_impl(Ninputs));
    }

    /*
     * The private constructor
     */
    vamsi_interleaver_cc_impl::vamsi_interleaver_cc_impl(int Ninputs)
      : gr::block("vamsi_interleaver_cc",
              gr::io_signature::make(1, 1, sizeof(char)),
              gr::io_signature::make(1, 1, sizeof(char))),
        d_Ninputs(Ninputs)  	
    {}

    /*
     * Our virtual destructor.
     */
    vamsi_interleaver_cc_impl::~vamsi_interleaver_cc_impl()
    {
    }

    void
    vamsi_interleaver_cc_impl::forecast (int noutput_items, gr_vector_int &ninput_items_required)
    {
        /* <+forecast+> e.g. ninput_items_required[0] = noutput_items */
    }

    int
    vamsi_interleaver_cc_impl::general_work (int noutput_items,
                       gr_vector_int &ninput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
    {
        const char *in = (const char *) input_items[0];
        char *out = (char *) output_items[0];
	int generated_output_data_1 = 0;
        int ii,pp,i;

	 if(ninput_items[0] > 0) // if receive data, start processing
        {
        //interleaver logic
        for(ii=0;ii<ninput_items[0];ii++)
        {
                pp = (d_Ninputs/4) * (ii % 4) + (ii/4) ; //permutation
//              printf("Interleaver permutation %d %d\n", ii, pp  ) ;
                out[ii] =  in[pp] ;
                generated_output_data_1++;
        } //Interleaver

#ifdef DEBUG
        printf("\nInterleaver generated data : %d\n",generated_output_data_1);

	for(i=0;i<ninput_items[0];i++)
	{
		printf("%d,",out[i]);
	}
#endif
        }
        // Tell runtime system how many input items we consumed on
        // each input stream.
        consume_each (ninput_items[0]);

        // Tell runtime system how many output items we produced.
        return generated_output_data_1;

	
   }

  } /* namespace my_interleaver */
} /* namespace gr */


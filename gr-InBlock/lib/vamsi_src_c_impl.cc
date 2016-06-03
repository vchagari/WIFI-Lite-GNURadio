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

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <gnuradio/io_signature.h>
#include "vamsi_src_c_impl.h"
//#define DEBUG 1

namespace gr {
  namespace InBlock {

    vamsi_src_c::sptr
    vamsi_src_c::make(int InDatlen)
    {
      return gnuradio::get_initial_sptr
        (new vamsi_src_c_impl(InDatlen));
    }

    /*
     * The private constructor
     */
    vamsi_src_c_impl::vamsi_src_c_impl(int InDatlen)
      : gr::sync_block("vamsi_src_c",
              gr::io_signature::make(0, 0, 0),
              gr::io_signature::make(1, 1, sizeof(char))),
	d_InDatlen(InDatlen)
    {}

    /*
     * Our virtual destructor.
     */
    vamsi_src_c_impl::~vamsi_src_c_impl()
    {
    }

    int
    vamsi_src_c_impl::work(int noutput_items,
			  gr_vector_const_void_star &input_items,
			  gr_vector_void_star &output_items)
    {
        char *out = (char *) output_items[0];

        // Do <+signal processing+>
	
	int i, j, index;
	int generated_output_data=0;
	int z =0,k;

  // tx packet generation

  	for(i=0; i<d_InDatlen/8; i++) {
    		for(j=0; j<8; j++) {
      			out[i*8 + j] = ((0x80 & ((i+1) << j)) == 0x80) ? 1 : 0;
			generated_output_data++;
    		}
  	}

  	index = d_InDatlen%8;
  	for(j=0; j<index; j++) {
    		out[i*8 + j] = ((0x80 & ((i+1) << j)) == 0x80) ? 1 : 0;
  	}

	z++;

#ifdef DEBUG

	printf("\nInput block generated output:%d",generated_output_data);	

	for(i=0;i<d_InDatlen;i++)
	{
		printf("%d,",out[i]);
	}
#endif 

		usleep(100000);

	 // Tell runtime system how many output items we produced.
	return generated_output_data;

	}       

  } /* namespace InBlock */
} /* namespace gr */


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
#include <gnuradio/io_signature.h>
#include "vamsi_sourceblk_c_impl.h"
//#define DEBUG 1

namespace gr {
  namespace sourceblock {

    vamsi_sourceblk_c::sptr
    vamsi_sourceblk_c::make()
    {
      return gnuradio::get_initial_sptr
        (new vamsi_sourceblk_c_impl());
    }

    /*
     * The private constructor
     */
    vamsi_sourceblk_c_impl::vamsi_sourceblk_c_impl()
      : gr::sync_block("vamsi_sourceblk_c",
              gr::io_signature::make(0, 0, 0),
              gr::io_signature::make(1, 1, sizeof(char)))
    {}

    /*
     * Our virtual destructor.
     */
    vamsi_sourceblk_c_impl::~vamsi_sourceblk_c_impl()
    {
    }

    int
    vamsi_sourceblk_c_impl::work(int noutput_items,
			  gr_vector_const_void_star &input_items,
			  gr_vector_void_star &output_items)
    {
        char *out = (char *) output_items[0];
	char inr[50];
	int generated_output =0;
	int i;
	int size = 40;
	FILE *fp;

	fp = fopen("input.dat", "rb");
    	fread(inr, size, 1, fp);
    	fclose(fp);

	 // Do <+signal processing+>

	for(i=0;i<size;i++)
	{
		out[i]=inr[i];
		generated_output++;
	}

#ifdef DEBUG 
		
	printf("\nInput block genereated data len:%d:",generated_output);	

	for(i=0;i<size;i++)
	{
		printf("%x,",out[i]);

	}
#endif
	
	usleep(100000);

        // Tell runtime system how many output items we produced.
        return generated_output;
    }

  } /* namespace sourceblock */
} /* namespace gr */


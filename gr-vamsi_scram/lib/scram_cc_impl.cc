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

#include "stdio.h"
#include <gnuradio/io_signature.h>
#include "scram_cc_impl.h"
//#define DEBUG 1


namespace gr {
  namespace vamsi_scram {

    scram_cc::sptr
    scram_cc::make()
    {
      return gnuradio::get_initial_sptr
        (new scram_cc_impl());
    }

    /*
     * The private constructor
     */
    scram_cc_impl::scram_cc_impl()
      : gr::block("scram_cc",
              gr::io_signature::make(1, 1, sizeof(char)),
              gr::io_signature::make(1, 1, sizeof(char)))
    {}

    /*
     * Our virtual destructor.
     */
    scram_cc_impl::~scram_cc_impl()
    {
    }

    void
    scram_cc_impl::forecast (int noutput_items, gr_vector_int &ninput_items_required)
    {
    }


    int
    scram_cc_impl::general_work (int noutput_items,
                       gr_vector_int &ninput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
    {
        const char *in = (const char *) input_items[0];
        char *out = (char *) output_items[0];
        int generated_output_data = 0; //num of output data
        // Do <+signal processing+>

	int i;	
	char y2,y5;
        y2 = (0x0008 & 0x0005) >> 3;
        y5 = 0x0001 & 0x0005;

        // Do

	if(ninput_items[0] > 0) // if receive data, start processing
        {
	
/*
		printf("\ninput data to scrambler\n");
		for(i=0;i<ninput_items[0];i++)
		{
			printf("%d,",in[i]);

		}
	
*/	         
		for( i=0; i<ninput_items[0]; i++)
         	{
          		out[i] = in[i] ^ y2 ^ y5;
          		generated_output_data++;
         }

 #ifdef DEBUG 
	printf("\nScrambler generated data : %d\n",generated_output_data);
	for(int i=0; i<ninput_items[0]; i++) 
	{ 
		 printf("%d,",out[i]);
	}
#endif
        }
	
        // Tell runtime system how many input items we consumed on
        // each input stream.
        consume_each (ninput_items[0]);
	
	//noutput_items = generated_output_data;

        // Tell runtime system how many output items we produced.
        return generated_output_data; //num of output data = num of next block input data
    }

  } /* namespace vamsi_scram */
} /* namespace gr */


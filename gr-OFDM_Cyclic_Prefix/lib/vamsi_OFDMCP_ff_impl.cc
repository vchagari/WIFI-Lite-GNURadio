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

//#define DEBUG 1
#include <gnuradio/io_signature.h>
#include "vamsi_OFDMCP_ff_impl.h"

namespace gr {
  namespace OFDM_Cyclic_Prefix {

    vamsi_OFDMCP_ff::sptr
    vamsi_OFDMCP_ff::make(int InputLen, int CPLen)
    {
      return gnuradio::get_initial_sptr
        (new vamsi_OFDMCP_ff_impl(InputLen, CPLen));
    }

    /*
     * The private constructor
     */
    vamsi_OFDMCP_ff_impl::vamsi_OFDMCP_ff_impl(int InputLen, int CPLen)
      : gr::block("vamsi_OFDMCP_ff",
              gr::io_signature::make(1, 1, sizeof(float)),
              gr::io_signature::make(1, 1, sizeof(float))),
	d_InputLen(InputLen),
	d_CPLen(CPLen)
    {}

    /*
     * Our virtual destructor.
     */
    vamsi_OFDMCP_ff_impl::~vamsi_OFDMCP_ff_impl()
    {
    }

    void
    vamsi_OFDMCP_ff_impl::forecast (int noutput_items, gr_vector_int &ninput_items_required)
    {
        /* <+forecast+> e.g. ninput_items_required[0] = noutput_items */
    }

    int
    vamsi_OFDMCP_ff_impl::general_work (int noutput_items,
                       gr_vector_int &ninput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
    {
        const float *in = (const float *) input_items[0];
        float *out = (float *) output_items[0];
	int generated_output_data = 0;
        int i;
        int tailIndex;

	

        tailIndex = d_InputLen - d_CPLen;

        // Do <+signal processing+>

        if(ninput_items[0] > 0) // if receive data, start processing
        {

                for(i=0; i<d_CPLen*2; i++)
                {
                        out[i] = in[(tailIndex*2)+i];
                        generated_output_data++;

                }
                // copy remaining part
                for(i=0; i<d_InputLen*2; i++)
                {
                        out[(d_CPLen*2) + i] = in[i];
                        generated_output_data++;

                }

#ifdef DEBUG

        printf("\nCyclic prefix genereated data:%d\n",generated_output_data);
        for(i=0;i<(d_InputLen+d_CPLen)*2;i++)
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

  } /* namespace OFDM_Cyclic_Prefix */
} /* namespace gr */


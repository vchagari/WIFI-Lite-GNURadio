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
#include <assert.h>
#include "common.h"
#include <gnuradio/io_signature.h>
#include "Viterbi_vamsi_cc_impl.h"
#include "viterbi.h"

//#define DEBUG 1

viterbiEncoder_t vEncoder[MAX_VITERBI];

namespace gr {
  namespace Viterbi_Encoder {

    Viterbi_vamsi_cc::sptr
    Viterbi_vamsi_cc::make()
    {
      return gnuradio::get_initial_sptr
        (new Viterbi_vamsi_cc_impl());
    }

    /*
     * The private constructor
     */
    Viterbi_vamsi_cc_impl::Viterbi_vamsi_cc_impl()
      : gr::block("Viterbi_vamsi_cc",
              gr::io_signature::make(1, 1, sizeof(signed char)),
              gr::io_signature::make(1, 1, sizeof(signed char)))
    {}

    /*
     * Our virtual destructor.
     */
    Viterbi_vamsi_cc_impl::~Viterbi_vamsi_cc_impl()
    {
    }

    void
    Viterbi_vamsi_cc_impl::forecast (int noutput_items, gr_vector_int &ninput_items_required)
    {
        /* <+forecast+> e.g. ninput_items_required[0] = noutput_items */
    }

void init_viterbiEncoder() {

  int i;

  for(i=0; i<MAX_VITERBI; i++) {
    vEncoder[i].state = IDLE;
  }
}

int get_viterbiEncoder() {

  int i;

  for(i=0; i<MAX_VITERBI; i++) {
    if(vEncoder[i].state == IDLE) {
      vEncoder[i].state = BUSY;
      return i;
    }
  }

  printf("no more viterbi encoder !!\n");
  exit(EXIT_FAILURE);
}

void set_viterbiEncoder(int eId) {

}

    int
    Viterbi_vamsi_cc_impl::general_work (int noutput_items,
                       gr_vector_int &ninput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
    {
        const char *in = (const char *) input_items[0];
        char *out = (char *) output_items[0];
	int generated_output_data= 0;
	int encoderId;

        // Initilizating Encoder  
        init_viterbiEncoder();

        // encodder instantiation
        encoderId = get_viterbiEncoder();
        set_viterbiEncoder(encoderId);

        int i, j, k;
        int oIndex;
        unsigned char sReg, iBit, g0, g1;
        int obIndex = 0;
        int puncIndex = 0;
        int puncBase = 0;
        int puncConfig[18]  = { 1,  1,  0,  1,  1,  0,  1,  1,  0,  1,  0,  1,  1,  0,  1,  1,  0,  1};
        int puncShuffle[18] = { 0,  2, -1,  4,  6, -1,  8, 10, -1,  1, -1,  3,  5, -1,  7,  9, -1,  11};

        //unsigned char g2;
        //  viterbiEncoder_t *ve;

        // initialization
        for(i=0; i<OUTPUT_LEN; i++) out[i] = 0;
        sReg = 0;

        // zero padding
  //    for(i=CODE_BLOCK, j=0; j<8; i++, j++) in[i] = 0;

	if(ninput_items[0] > 0) // if receive data, start processing
        {

                for(i=0, oIndex=0; i<INPUT_LEN; i++)
                {
                        iBit = in[i];

                        for(k=0, g0=iBit; k<(K-1); k++)
                        {
                                if((MASK0 >> k & 0x01)) {
                                        g0 = g0 ^ (sReg >> k & 0x1);
                                }
                        }

                        for(k=0, g1=iBit; k<(K-1); k++) {
                                if((MASK1 >> k & 0x01)) {
                                        g1 = g1 ^ (sReg >> k & 0x1);
                                }
                        }
                 // update register
                sReg = (sReg >> 1) + (iBit << (K-2));

                // fill output buffer
                out[oIndex++] = g0;
                out[oIndex++] = g1;
                //    oBuf[oIndex++] = g2;

                generated_output_data++;
		generated_output_data++;

  }

#ifdef DEBUG 

	printf("\nEncoder generated data : %d\n",generated_output_data);

        for(i=0; i<INPUT_LEN*2;i++)
        {
                printf("%d",out[i]);
        }

        
#endif
	}
	
        // Tell runtime system how many input items we consumed on
        // each input stream.
        consume_each (ninput_items[0]);

        // Tell runtime system how many output items we produced.
        return generated_output_data;
    }

  } /* namespace Viterbi_Encoder */
} /* namespace gr */


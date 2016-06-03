/* -*- c++ -*- */

#define IFFT_V_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "IFFT_V_swig_doc.i"

%{
#include "IFFT_V/IFFT_ff.h"
%}


%include "IFFT_V/IFFT_ff.h"
GR_SWIG_BLOCK_MAGIC2(IFFT_V, IFFT_ff);

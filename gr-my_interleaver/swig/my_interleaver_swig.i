/* -*- c++ -*- */

#define MY_INTERLEAVER_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "my_interleaver_swig_doc.i"

%{
#include "my_interleaver/vamsi_interleaver_cc.h"
%}


%include "my_interleaver/vamsi_interleaver_cc.h"
GR_SWIG_BLOCK_MAGIC2(my_interleaver, vamsi_interleaver_cc);

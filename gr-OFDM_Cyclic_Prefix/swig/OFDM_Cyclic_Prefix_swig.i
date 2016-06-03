/* -*- c++ -*- */

#define OFDM_CYCLIC_PREFIX_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "OFDM_Cyclic_Prefix_swig_doc.i"

%{
#include "OFDM_Cyclic_Prefix/vamsi_OFDMCP_ff.h"
%}


%include "OFDM_Cyclic_Prefix/vamsi_OFDMCP_ff.h"
GR_SWIG_BLOCK_MAGIC2(OFDM_Cyclic_Prefix, vamsi_OFDMCP_ff);

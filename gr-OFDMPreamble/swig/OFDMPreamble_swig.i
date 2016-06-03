/* -*- c++ -*- */

#define OFDMPREAMBLE_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "OFDMPreamble_swig_doc.i"

%{
#include "OFDMPreamble/vamsi_OFDMPreamble_ff.h"
%}


%include "OFDMPreamble/vamsi_OFDMPreamble_ff.h"
GR_SWIG_BLOCK_MAGIC2(OFDMPreamble, vamsi_OFDMPreamble_ff);

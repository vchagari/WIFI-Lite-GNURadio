/* -*- c++ -*- */

#define VAMSI_SCRAM_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "vamsi_scram_swig_doc.i"

%{
#include "vamsi_scram/scram_cc.h"
%}


%include "vamsi_scram/scram_cc.h"
GR_SWIG_BLOCK_MAGIC2(vamsi_scram, scram_cc);

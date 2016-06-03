/* -*- c++ -*- */

#define INBLOCK_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "InBlock_swig_doc.i"

%{
#include "InBlock/vamsi_src_c.h"
%}


%include "InBlock/vamsi_src_c.h"
GR_SWIG_BLOCK_MAGIC2(InBlock, vamsi_src_c);

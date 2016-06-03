/* -*- c++ -*- */

#define SOURCEBLOCK_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "sourceblock_swig_doc.i"

%{
#include "sourceblock/vamsi_sourceblk_c.h"
%}


%include "sourceblock/vamsi_sourceblk_c.h"
GR_SWIG_BLOCK_MAGIC2(sourceblock, vamsi_sourceblk_c);

/* -*- c++ -*- */

#define QPSK_MOD_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "QPSK_mod_swig_doc.i"

%{
#include "QPSK_mod/Vamsi_QPSK_mod_cf.h"
%}


%include "QPSK_mod/Vamsi_QPSK_mod_cf.h"
GR_SWIG_BLOCK_MAGIC2(QPSK_mod, Vamsi_QPSK_mod_cf);

/* -*- c++ -*- */

#define VITERBI_ENCODER_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "Viterbi_Encoder_swig_doc.i"

%{
#include "Viterbi_Encoder/Viterbi_vamsi_cc.h"
%}


%include "Viterbi_Encoder/Viterbi_vamsi_cc.h"
GR_SWIG_BLOCK_MAGIC2(Viterbi_Encoder, Viterbi_vamsi_cc);

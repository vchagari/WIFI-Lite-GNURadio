#!/bin/sh
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/nuc-5/vamsi/My_Blocks/gr-Viterbi_Encoder/lib
export PATH=/home/nuc-5/vamsi/My_Blocks/gr-Viterbi_Encoder/lib/lib:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DYLD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH
test-Viterbi_Encoder 

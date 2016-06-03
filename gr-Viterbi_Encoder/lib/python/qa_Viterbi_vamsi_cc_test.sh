#!/bin/sh
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/nuc-5/vamsi/My_Blocks/gr-Viterbi_Encoder/python
export PATH=/home/nuc-5/vamsi/My_Blocks/gr-Viterbi_Encoder/lib/python:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DYLD_LIBRARY_PATH
export PYTHONPATH=/home/nuc-5/vamsi/My_Blocks/gr-Viterbi_Encoder/lib/swig:$PYTHONPATH
/usr/bin/python /home/nuc-5/vamsi/My_Blocks/gr-Viterbi_Encoder/python/qa_Viterbi_vamsi_cc.py 

#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/python
export GR_CONF_CONTROLPORT_ON=False
export PATH=/home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/build/python:$PATH
export LD_LIBRARY_PATH=/home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/build/swig:$PYTHONPATH
/usr/bin/python2 /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/python/qa_vamsi_OFDMCP_ff.py 

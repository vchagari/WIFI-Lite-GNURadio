#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/intel-nuc/My-Blocks/gr-OFDMPreamble/python
export GR_CONF_CONTROLPORT_ON=False
export PATH=/home/intel-nuc/My-Blocks/gr-OFDMPreamble/build/python:$PATH
export LD_LIBRARY_PATH=/home/intel-nuc/My-Blocks/gr-OFDMPreamble/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/intel-nuc/My-Blocks/gr-OFDMPreamble/build/swig:$PYTHONPATH
/usr/bin/python2 /home/intel-nuc/My-Blocks/gr-OFDMPreamble/python/qa_vamsi_OFDMPreamble_ff.py 

#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/chagari/Work/GNURadio/My_Blocks/gr-OFDMPreamble/python
export GR_CONF_CONTROLPORT_ON=False
export PATH=/home/chagari/Work/GNURadio/My_Blocks/gr-OFDMPreamble/build/python:$PATH
export LD_LIBRARY_PATH=/home/chagari/Work/GNURadio/My_Blocks/gr-OFDMPreamble/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/chagari/Work/GNURadio/My_Blocks/gr-OFDMPreamble/build/swig:$PYTHONPATH
/usr/bin/python2 /home/chagari/Work/GNURadio/My_Blocks/gr-OFDMPreamble/python/qa_vamsi_OFDMPreamble_ff.py 

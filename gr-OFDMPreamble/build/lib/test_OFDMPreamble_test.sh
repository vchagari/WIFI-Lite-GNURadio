#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/chagari/Work/GNURadio/My_Blocks/gr-OFDMPreamble/lib
export GR_CONF_CONTROLPORT_ON=False
export PATH=/home/chagari/Work/GNURadio/My_Blocks/gr-OFDMPreamble/build/lib:$PATH
export LD_LIBRARY_PATH=/home/chagari/Work/GNURadio/My_Blocks/gr-OFDMPreamble/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH
test-OFDMPreamble 

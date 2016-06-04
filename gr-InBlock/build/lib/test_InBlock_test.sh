#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/intel-nuc/My-Blocks/gr-InBlock/lib
export GR_CONF_CONTROLPORT_ON=False
export PATH=/home/intel-nuc/My-Blocks/gr-InBlock/build/lib:$PATH
export LD_LIBRARY_PATH=/home/intel-nuc/My-Blocks/gr-InBlock/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH
test-InBlock 

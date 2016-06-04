#!/bin/sh
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/intel-nuc/My-Blocks/gr-IFFT_V/lib
export PATH=/home/intel-nuc/My-Blocks/gr-IFFT_V/build/lib:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DYLD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH
test-IFFT_V 

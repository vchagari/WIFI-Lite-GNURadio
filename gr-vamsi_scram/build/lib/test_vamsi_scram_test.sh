#!/bin/sh
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/lib
export PATH=/home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/lib:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DYLD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH
test-vamsi_scram 

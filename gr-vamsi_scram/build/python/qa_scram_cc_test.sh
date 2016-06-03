#!/bin/sh
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/python
export PATH=/home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/python:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DYLD_LIBRARY_PATH
export PYTHONPATH=/home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/swig:$PYTHONPATH
/usr/bin/python2 /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/python/qa_scram_cc.py 

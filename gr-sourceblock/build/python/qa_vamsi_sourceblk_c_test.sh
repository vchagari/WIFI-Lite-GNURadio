#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/intel-nuc/My-Blocks/gr-sourceblock/python
export GR_CONF_CONTROLPORT_ON=False
export PATH=/home/intel-nuc/My-Blocks/gr-sourceblock/build/python:$PATH
export LD_LIBRARY_PATH=/home/intel-nuc/My-Blocks/gr-sourceblock/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/intel-nuc/My-Blocks/gr-sourceblock/build/swig:$PYTHONPATH
/usr/bin/python2 /home/intel-nuc/My-Blocks/gr-sourceblock/python/qa_vamsi_sourceblk_c.py 

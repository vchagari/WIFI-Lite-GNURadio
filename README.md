# WIFI-Lite-GNURadio
WIFI-Lite Transmiter PHY Layer Kernels Implementation Using Ettus B210/N210

Preqs:
  1. GNURadio Software 
  2. Ettus N210/B210 

Building and compiling Blocks: 

Note:Go to each directory expect GRC and do the step1 

Step:1
$rm -rf build 
$mkdir build    # We're currently in the each module's top directory
$cd build/
$cmake ../      # Tell CMake that all its config files are one dir up
$make           # And start building (should work after the previous section)
$sudo make install
$sudo ldconfig

Once the step1 is done for all the blocks, you can see the blocks in the GRC. 

Step:2
Open the WIFI-OFDM-TX_working.grc file (Which is avaible in the GRC directory) using GNURadio Companion and compile it and run the simulation. 

Note:
Receiver chain yet to be uploaded. I have a working version, I will upload it soon.  



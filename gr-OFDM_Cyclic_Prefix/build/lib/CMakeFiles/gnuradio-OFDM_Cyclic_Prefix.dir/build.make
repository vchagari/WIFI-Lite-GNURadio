# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/flags.make

lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o: lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/flags.make
lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o: ../lib/vamsi_OFDMCP_ff_impl.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o"
	cd /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o -c /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/lib/vamsi_OFDMCP_ff_impl.cc

lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.i"
	cd /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/lib/vamsi_OFDMCP_ff_impl.cc > CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.i

lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.s"
	cd /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/lib/vamsi_OFDMCP_ff_impl.cc -o CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.s

lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o.requires:
.PHONY : lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o.requires

lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o.provides: lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/build.make lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o.provides.build
.PHONY : lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o.provides

lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o.provides.build: lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o

# Object files for target gnuradio-OFDM_Cyclic_Prefix
gnuradio__OFDM_Cyclic_Prefix_OBJECTS = \
"CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o"

# External object files for target gnuradio-OFDM_Cyclic_Prefix
gnuradio__OFDM_Cyclic_Prefix_EXTERNAL_OBJECTS =

lib/libgnuradio-OFDM_Cyclic_Prefix.so: lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o
lib/libgnuradio-OFDM_Cyclic_Prefix.so: lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/build.make
lib/libgnuradio-OFDM_Cyclic_Prefix.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/libgnuradio-OFDM_Cyclic_Prefix.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/libgnuradio-OFDM_Cyclic_Prefix.so: /usr/local/lib/libgnuradio-runtime.so
lib/libgnuradio-OFDM_Cyclic_Prefix.so: /usr/local/lib/libgnuradio-pmt.so
lib/libgnuradio-OFDM_Cyclic_Prefix.so: lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libgnuradio-OFDM_Cyclic_Prefix.so"
	cd /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/build: lib/libgnuradio-OFDM_Cyclic_Prefix.so
.PHONY : lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/build

lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/requires: lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/vamsi_OFDMCP_ff_impl.cc.o.requires
.PHONY : lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/requires

lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/clean:
	cd /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/clean

lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/depend:
	cd /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/lib /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/build /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/build/lib /home/intel-nuc/My-Blocks/gr-OFDM_Cyclic_Prefix/build/lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/gnuradio-OFDM_Cyclic_Prefix.dir/depend


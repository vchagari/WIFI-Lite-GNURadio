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
CMAKE_SOURCE_DIR = /home/intel-nuc/My-Blocks/gr-IFFT_V

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/intel-nuc/My-Blocks/gr-IFFT_V/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/gnuradio-IFFT_V.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/gnuradio-IFFT_V.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/gnuradio-IFFT_V.dir/flags.make

lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o: lib/CMakeFiles/gnuradio-IFFT_V.dir/flags.make
lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o: ../lib/IFFT_ff_impl.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/intel-nuc/My-Blocks/gr-IFFT_V/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o"
	cd /home/intel-nuc/My-Blocks/gr-IFFT_V/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o -c /home/intel-nuc/My-Blocks/gr-IFFT_V/lib/IFFT_ff_impl.cc

lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.i"
	cd /home/intel-nuc/My-Blocks/gr-IFFT_V/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/intel-nuc/My-Blocks/gr-IFFT_V/lib/IFFT_ff_impl.cc > CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.i

lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.s"
	cd /home/intel-nuc/My-Blocks/gr-IFFT_V/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/intel-nuc/My-Blocks/gr-IFFT_V/lib/IFFT_ff_impl.cc -o CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.s

lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o.requires:
.PHONY : lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o.requires

lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o.provides: lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/gnuradio-IFFT_V.dir/build.make lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o.provides.build
.PHONY : lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o.provides

lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o.provides.build: lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o

# Object files for target gnuradio-IFFT_V
gnuradio__IFFT_V_OBJECTS = \
"CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o"

# External object files for target gnuradio-IFFT_V
gnuradio__IFFT_V_EXTERNAL_OBJECTS =

lib/libgnuradio-IFFT_V.so: lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o
lib/libgnuradio-IFFT_V.so: lib/CMakeFiles/gnuradio-IFFT_V.dir/build.make
lib/libgnuradio-IFFT_V.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/libgnuradio-IFFT_V.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/libgnuradio-IFFT_V.so: /usr/local/lib/libgnuradio-runtime.so
lib/libgnuradio-IFFT_V.so: lib/CMakeFiles/gnuradio-IFFT_V.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libgnuradio-IFFT_V.so"
	cd /home/intel-nuc/My-Blocks/gr-IFFT_V/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gnuradio-IFFT_V.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/gnuradio-IFFT_V.dir/build: lib/libgnuradio-IFFT_V.so
.PHONY : lib/CMakeFiles/gnuradio-IFFT_V.dir/build

lib/CMakeFiles/gnuradio-IFFT_V.dir/requires: lib/CMakeFiles/gnuradio-IFFT_V.dir/IFFT_ff_impl.cc.o.requires
.PHONY : lib/CMakeFiles/gnuradio-IFFT_V.dir/requires

lib/CMakeFiles/gnuradio-IFFT_V.dir/clean:
	cd /home/intel-nuc/My-Blocks/gr-IFFT_V/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/gnuradio-IFFT_V.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/gnuradio-IFFT_V.dir/clean

lib/CMakeFiles/gnuradio-IFFT_V.dir/depend:
	cd /home/intel-nuc/My-Blocks/gr-IFFT_V/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/intel-nuc/My-Blocks/gr-IFFT_V /home/intel-nuc/My-Blocks/gr-IFFT_V/lib /home/intel-nuc/My-Blocks/gr-IFFT_V/build /home/intel-nuc/My-Blocks/gr-IFFT_V/build/lib /home/intel-nuc/My-Blocks/gr-IFFT_V/build/lib/CMakeFiles/gnuradio-IFFT_V.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/gnuradio-IFFT_V.dir/depend


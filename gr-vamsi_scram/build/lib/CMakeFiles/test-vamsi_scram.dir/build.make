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
CMAKE_SOURCE_DIR = /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/test-vamsi_scram.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/test-vamsi_scram.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/test-vamsi_scram.dir/flags.make

lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o: lib/CMakeFiles/test-vamsi_scram.dir/flags.make
lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o: ../lib/test_vamsi_scram.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o -c /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/lib/test_vamsi_scram.cc

lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.i"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/lib/test_vamsi_scram.cc > CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.i

lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.s"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/lib/test_vamsi_scram.cc -o CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.s

lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o.requires:
.PHONY : lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o.requires

lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o.provides: lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-vamsi_scram.dir/build.make lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o.provides

lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o.provides.build: lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o

lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o: lib/CMakeFiles/test-vamsi_scram.dir/flags.make
lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o: ../lib/qa_vamsi_scram.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o -c /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/lib/qa_vamsi_scram.cc

lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.i"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/lib/qa_vamsi_scram.cc > CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.i

lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.s"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/lib/qa_vamsi_scram.cc -o CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.s

lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o.requires:
.PHONY : lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o.requires

lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o.provides: lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-vamsi_scram.dir/build.make lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o.provides

lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o.provides.build: lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o

# Object files for target test-vamsi_scram
test__vamsi_scram_OBJECTS = \
"CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o" \
"CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o"

# External object files for target test-vamsi_scram
test__vamsi_scram_EXTERNAL_OBJECTS =

lib/test-vamsi_scram: lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o
lib/test-vamsi_scram: lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o
lib/test-vamsi_scram: lib/CMakeFiles/test-vamsi_scram.dir/build.make
lib/test-vamsi_scram: /usr/local/lib/libgnuradio-runtime.so
lib/test-vamsi_scram: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/test-vamsi_scram: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/test-vamsi_scram: /usr/lib/x86_64-linux-gnu/libcppunit.so
lib/test-vamsi_scram: lib/libgnuradio-vamsi_scram.so
lib/test-vamsi_scram: /usr/local/lib/libgnuradio-runtime.so
lib/test-vamsi_scram: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/test-vamsi_scram: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/test-vamsi_scram: lib/CMakeFiles/test-vamsi_scram.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test-vamsi_scram"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-vamsi_scram.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/test-vamsi_scram.dir/build: lib/test-vamsi_scram
.PHONY : lib/CMakeFiles/test-vamsi_scram.dir/build

lib/CMakeFiles/test-vamsi_scram.dir/requires: lib/CMakeFiles/test-vamsi_scram.dir/test_vamsi_scram.cc.o.requires
lib/CMakeFiles/test-vamsi_scram.dir/requires: lib/CMakeFiles/test-vamsi_scram.dir/qa_vamsi_scram.cc.o.requires
.PHONY : lib/CMakeFiles/test-vamsi_scram.dir/requires

lib/CMakeFiles/test-vamsi_scram.dir/clean:
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/test-vamsi_scram.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/test-vamsi_scram.dir/clean

lib/CMakeFiles/test-vamsi_scram.dir/depend:
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/lib /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/lib /home/chagari/Work/GNURadio/My_Blocks/gr-vamsi_scram/build/lib/CMakeFiles/test-vamsi_scram.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/test-vamsi_scram.dir/depend


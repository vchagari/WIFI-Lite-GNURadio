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
CMAKE_SOURCE_DIR = /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/test-InBlock.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/test-InBlock.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/test-InBlock.dir/flags.make

lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.o: lib/CMakeFiles/test-InBlock.dir/flags.make
lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.o: ../lib/test_InBlock.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.o"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-InBlock.dir/test_InBlock.cc.o -c /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/lib/test_InBlock.cc

lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-InBlock.dir/test_InBlock.cc.i"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/lib/test_InBlock.cc > CMakeFiles/test-InBlock.dir/test_InBlock.cc.i

lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-InBlock.dir/test_InBlock.cc.s"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/lib/test_InBlock.cc -o CMakeFiles/test-InBlock.dir/test_InBlock.cc.s

lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.o.requires:
.PHONY : lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.o.requires

lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.o.provides: lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-InBlock.dir/build.make lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.o.provides

lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.o.provides.build: lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.o

lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o: lib/CMakeFiles/test-InBlock.dir/flags.make
lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o: ../lib/qa_InBlock.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o -c /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/lib/qa_InBlock.cc

lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-InBlock.dir/qa_InBlock.cc.i"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/lib/qa_InBlock.cc > CMakeFiles/test-InBlock.dir/qa_InBlock.cc.i

lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-InBlock.dir/qa_InBlock.cc.s"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/lib/qa_InBlock.cc -o CMakeFiles/test-InBlock.dir/qa_InBlock.cc.s

lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o.requires:
.PHONY : lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o.requires

lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o.provides: lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-InBlock.dir/build.make lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o.provides

lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o.provides.build: lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o

lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o: lib/CMakeFiles/test-InBlock.dir/flags.make
lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o: ../lib/qa_vamsi_src_c.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o -c /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/lib/qa_vamsi_src_c.cc

lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.i"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/lib/qa_vamsi_src_c.cc > CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.i

lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.s"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/lib/qa_vamsi_src_c.cc -o CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.s

lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o.requires:
.PHONY : lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o.requires

lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o.provides: lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-InBlock.dir/build.make lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o.provides

lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o.provides.build: lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o

# Object files for target test-InBlock
test__InBlock_OBJECTS = \
"CMakeFiles/test-InBlock.dir/test_InBlock.cc.o" \
"CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o" \
"CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o"

# External object files for target test-InBlock
test__InBlock_EXTERNAL_OBJECTS =

lib/test-InBlock: lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.o
lib/test-InBlock: lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o
lib/test-InBlock: lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o
lib/test-InBlock: lib/CMakeFiles/test-InBlock.dir/build.make
lib/test-InBlock: /usr/local/lib/libgnuradio-runtime.so
lib/test-InBlock: /usr/local/lib/libgnuradio-pmt.so
lib/test-InBlock: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/test-InBlock: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/test-InBlock: /usr/lib/x86_64-linux-gnu/libcppunit.so
lib/test-InBlock: lib/libgnuradio-InBlock.so
lib/test-InBlock: /usr/local/lib/libgnuradio-runtime.so
lib/test-InBlock: /usr/local/lib/libgnuradio-pmt.so
lib/test-InBlock: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/test-InBlock: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/test-InBlock: lib/CMakeFiles/test-InBlock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test-InBlock"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-InBlock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/test-InBlock.dir/build: lib/test-InBlock
.PHONY : lib/CMakeFiles/test-InBlock.dir/build

lib/CMakeFiles/test-InBlock.dir/requires: lib/CMakeFiles/test-InBlock.dir/test_InBlock.cc.o.requires
lib/CMakeFiles/test-InBlock.dir/requires: lib/CMakeFiles/test-InBlock.dir/qa_InBlock.cc.o.requires
lib/CMakeFiles/test-InBlock.dir/requires: lib/CMakeFiles/test-InBlock.dir/qa_vamsi_src_c.cc.o.requires
.PHONY : lib/CMakeFiles/test-InBlock.dir/requires

lib/CMakeFiles/test-InBlock.dir/clean:
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/test-InBlock.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/test-InBlock.dir/clean

lib/CMakeFiles/test-InBlock.dir/depend:
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/lib /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/lib /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/lib/CMakeFiles/test-InBlock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/test-InBlock.dir/depend

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

# Utility rule file for InBlock_swig_swig_doc.

# Include the progress variables for this target.
include swig/CMakeFiles/InBlock_swig_swig_doc.dir/progress.make

swig/CMakeFiles/InBlock_swig_swig_doc: swig/InBlock_swig_doc.i

swig/InBlock_swig_doc.i: swig/InBlock_swig_doc_swig_docs/xml/index.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating python docstrings for InBlock_swig_doc"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/docs/doxygen && /usr/bin/python2 -B /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/docs/doxygen/swig_doc.py /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/swig/InBlock_swig_doc_swig_docs/xml /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/swig/InBlock_swig_doc.i

swig/InBlock_swig_doc_swig_docs/xml/index.xml: swig/_InBlock_swig_doc_tag
	$(CMAKE_COMMAND) -E cmake_progress_report /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating doxygen xml for InBlock_swig_doc docs"
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/swig && ./_InBlock_swig_doc_tag
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/swig && /usr/bin/doxygen /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/swig/InBlock_swig_doc_swig_docs/Doxyfile

InBlock_swig_swig_doc: swig/CMakeFiles/InBlock_swig_swig_doc
InBlock_swig_swig_doc: swig/InBlock_swig_doc.i
InBlock_swig_swig_doc: swig/InBlock_swig_doc_swig_docs/xml/index.xml
InBlock_swig_swig_doc: swig/CMakeFiles/InBlock_swig_swig_doc.dir/build.make
.PHONY : InBlock_swig_swig_doc

# Rule to build all files generated by this target.
swig/CMakeFiles/InBlock_swig_swig_doc.dir/build: InBlock_swig_swig_doc
.PHONY : swig/CMakeFiles/InBlock_swig_swig_doc.dir/build

swig/CMakeFiles/InBlock_swig_swig_doc.dir/clean:
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/swig && $(CMAKE_COMMAND) -P CMakeFiles/InBlock_swig_swig_doc.dir/cmake_clean.cmake
.PHONY : swig/CMakeFiles/InBlock_swig_swig_doc.dir/clean

swig/CMakeFiles/InBlock_swig_swig_doc.dir/depend:
	cd /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/swig /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/swig /home/chagari/Work/GNURadio/My_Blocks/gr-InBlock/build/swig/CMakeFiles/InBlock_swig_swig_doc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : swig/CMakeFiles/InBlock_swig_swig_doc.dir/depend

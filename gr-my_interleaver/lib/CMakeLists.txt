# Copyright 2011,2012 Free Software Foundation, Inc.
#
# This file is part of GNU Radio
#
# GNU Radio is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
#
# GNU Radio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with GNU Radio; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.

########################################################################
# Setup library
########################################################################
include(GrPlatform) #define LIB_SUFFIX

include_directories(${Boost_INCLUDE_DIR})
link_directories(${Boost_LIBRARY_DIRS})

list(APPEND my_interleaver_sources
    vamsi_interleaver_cc_impl.cc
)

add_library(gnuradio-my_interleaver SHARED ${my_interleaver_sources})
target_link_libraries(gnuradio-my_interleaver ${Boost_LIBRARIES} ${GNURADIO_RUNTIME_LIBRARIES})
set_target_properties(gnuradio-my_interleaver PROPERTIES DEFINE_SYMBOL "gnuradio_my_interleaver_EXPORTS")

########################################################################
# Install built library files
########################################################################
install(TARGETS gnuradio-my_interleaver
    LIBRARY DESTINATION lib${LIB_SUFFIX} # .so/.dylib file
    ARCHIVE DESTINATION lib${LIB_SUFFIX} # .lib file
    RUNTIME DESTINATION bin              # .dll file
)

########################################################################
# Build and register unit test
########################################################################
include(GrTest)

include_directories(${CPPUNIT_INCLUDE_DIRS})

list(APPEND test_my_interleaver_sources
    ${CMAKE_CURRENT_SOURCE_DIR}/test_my_interleaver.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/qa_my_interleaver.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/qa_vamsi_interleaver_cc.cc
)

add_executable(test-my_interleaver ${test_my_interleaver_sources})

target_link_libraries(
  test-my_interleaver
  ${GNURADIO_RUNTIME_LIBRARIES}
  ${Boost_LIBRARIES}
  ${CPPUNIT_LIBRARIES}
  gnuradio-my_interleaver
)

GR_ADD_TEST(test_my_interleaver test-my_interleaver)

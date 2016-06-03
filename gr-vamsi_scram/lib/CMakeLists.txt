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

list(APPEND vamsi_scram_sources
    scram_cc_impl.cc
)

add_library(gnuradio-vamsi_scram SHARED ${vamsi_scram_sources})
target_link_libraries(gnuradio-vamsi_scram ${Boost_LIBRARIES} ${GNURADIO_RUNTIME_LIBRARIES})
set_target_properties(gnuradio-vamsi_scram PROPERTIES DEFINE_SYMBOL "gnuradio_vamsi_scram_EXPORTS")

########################################################################
# Install built library files
########################################################################
install(TARGETS gnuradio-vamsi_scram
    LIBRARY DESTINATION lib${LIB_SUFFIX} # .so/.dylib file
    ARCHIVE DESTINATION lib${LIB_SUFFIX} # .lib file
    RUNTIME DESTINATION bin              # .dll file
)

########################################################################
# Build and register unit test
########################################################################
include(GrTest)

include_directories(${CPPUNIT_INCLUDE_DIRS})

list(APPEND test_vamsi_scram_sources
    ${CMAKE_CURRENT_SOURCE_DIR}/test_vamsi_scram.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/qa_vamsi_scram.cc
)

add_executable(test-vamsi_scram ${test_vamsi_scram_sources})

target_link_libraries(
  test-vamsi_scram
  ${GNURADIO_RUNTIME_LIBRARIES}
  ${Boost_LIBRARIES}
  ${CPPUNIT_LIBRARIES}
  gnuradio-vamsi_scram
)

GR_ADD_TEST(test_vamsi_scram test-vamsi_scram)

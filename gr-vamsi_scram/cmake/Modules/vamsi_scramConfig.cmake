INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_VAMSI_SCRAM vamsi_scram)

FIND_PATH(
    VAMSI_SCRAM_INCLUDE_DIRS
    NAMES vamsi_scram/api.h
    HINTS $ENV{VAMSI_SCRAM_DIR}/include
        ${PC_VAMSI_SCRAM_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    VAMSI_SCRAM_LIBRARIES
    NAMES gnuradio-vamsi_scram
    HINTS $ENV{VAMSI_SCRAM_DIR}/lib
        ${PC_VAMSI_SCRAM_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(VAMSI_SCRAM DEFAULT_MSG VAMSI_SCRAM_LIBRARIES VAMSI_SCRAM_INCLUDE_DIRS)
MARK_AS_ADVANCED(VAMSI_SCRAM_LIBRARIES VAMSI_SCRAM_INCLUDE_DIRS)


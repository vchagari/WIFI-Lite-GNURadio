INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_OFDMPREAMBLE OFDMPreamble)

FIND_PATH(
    OFDMPREAMBLE_INCLUDE_DIRS
    NAMES OFDMPreamble/api.h
    HINTS $ENV{OFDMPREAMBLE_DIR}/include
        ${PC_OFDMPREAMBLE_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    OFDMPREAMBLE_LIBRARIES
    NAMES gnuradio-OFDMPreamble
    HINTS $ENV{OFDMPREAMBLE_DIR}/lib
        ${PC_OFDMPREAMBLE_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(OFDMPREAMBLE DEFAULT_MSG OFDMPREAMBLE_LIBRARIES OFDMPREAMBLE_INCLUDE_DIRS)
MARK_AS_ADVANCED(OFDMPREAMBLE_LIBRARIES OFDMPREAMBLE_INCLUDE_DIRS)


INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_IFFT_V IFFT_V)

FIND_PATH(
    IFFT_V_INCLUDE_DIRS
    NAMES IFFT_V/api.h
    HINTS $ENV{IFFT_V_DIR}/include
        ${PC_IFFT_V_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    IFFT_V_LIBRARIES
    NAMES gnuradio-IFFT_V
    HINTS $ENV{IFFT_V_DIR}/lib
        ${PC_IFFT_V_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(IFFT_V DEFAULT_MSG IFFT_V_LIBRARIES IFFT_V_INCLUDE_DIRS)
MARK_AS_ADVANCED(IFFT_V_LIBRARIES IFFT_V_INCLUDE_DIRS)


INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_QPSK_MOD QPSK_mod)

FIND_PATH(
    QPSK_MOD_INCLUDE_DIRS
    NAMES QPSK_mod/api.h
    HINTS $ENV{QPSK_MOD_DIR}/include
        ${PC_QPSK_MOD_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    QPSK_MOD_LIBRARIES
    NAMES gnuradio-QPSK_mod
    HINTS $ENV{QPSK_MOD_DIR}/lib
        ${PC_QPSK_MOD_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(QPSK_MOD DEFAULT_MSG QPSK_MOD_LIBRARIES QPSK_MOD_INCLUDE_DIRS)
MARK_AS_ADVANCED(QPSK_MOD_LIBRARIES QPSK_MOD_INCLUDE_DIRS)


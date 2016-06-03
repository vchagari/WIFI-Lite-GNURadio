INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_SOURCEBLOCK sourceblock)

FIND_PATH(
    SOURCEBLOCK_INCLUDE_DIRS
    NAMES sourceblock/api.h
    HINTS $ENV{SOURCEBLOCK_DIR}/include
        ${PC_SOURCEBLOCK_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    SOURCEBLOCK_LIBRARIES
    NAMES gnuradio-sourceblock
    HINTS $ENV{SOURCEBLOCK_DIR}/lib
        ${PC_SOURCEBLOCK_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(SOURCEBLOCK DEFAULT_MSG SOURCEBLOCK_LIBRARIES SOURCEBLOCK_INCLUDE_DIRS)
MARK_AS_ADVANCED(SOURCEBLOCK_LIBRARIES SOURCEBLOCK_INCLUDE_DIRS)

INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_INBLOCK InBlock)

FIND_PATH(
    INBLOCK_INCLUDE_DIRS
    NAMES InBlock/api.h
    HINTS $ENV{INBLOCK_DIR}/include
        ${PC_INBLOCK_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    INBLOCK_LIBRARIES
    NAMES gnuradio-InBlock
    HINTS $ENV{INBLOCK_DIR}/lib
        ${PC_INBLOCK_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(INBLOCK DEFAULT_MSG INBLOCK_LIBRARIES INBLOCK_INCLUDE_DIRS)
MARK_AS_ADVANCED(INBLOCK_LIBRARIES INBLOCK_INCLUDE_DIRS)


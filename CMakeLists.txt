cmake_minimum_required(VERSION 3.2)
project(libevent)

include(CheckIncludeFiles)
include(CheckLibraryExists)
include(FindPkgConfig)

set(CMAKE_SOURCE_DIR ./)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -g3 -ggdb -O0")


add_custom_command(
        OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/src/modules/libevent.so
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/src
        COMMAND make -f ${CMAKE_CURRENT_SOURCE_DIR}/src/Makefile
        COMMENT "Running io makefile"
)

add_custom_target(
        external_libevent ALL
        DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/src/modules/libevent.so
)

set(ION_SOURCE_FILES libevent.c)

add_library(libevent ${ION_SOURCE_FILES})
add_dependencies(libevent external_libevent)
include_directories("/opt/local/include/php56/php" "/opt/local/include/php56/php/main" "/opt/local/include/php56/php/Zend" "/opt/local/include/php56/php/TSRM"  )
include_directories("/opt/local/var/macports/build/_opt_local_var_macports_sources_rsync.macports.org_release_tarballs_ports_devel_libevent/libevent/work/libevent-2.0.22-stable/")
#include_directories("${CMAKE_CURRENT_SOURCE_DIR}/Libevent")
include_directories("/opt/local/include")

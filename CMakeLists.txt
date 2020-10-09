cmake_minimum_required(VERSION 3.18)
project(MD5Encrypter)

SET(CMAKE_CXX_STANDARD 17)
SET(CMAKE_CXX_STANDARD_REQUIRED ON)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup(TARGETS)

enable_testing()

find_program(CCACHE_PROGRAM ccache)
if(CCACHE_PROGRAM)
  set(CMAKE_CXX_COMPILER_LAUNCHER ${CCACHE_PROGRAM})
  set(CMAKE_C_COMPILER_LAUNCHER   ${CCACHE_PROGRAM})
endif()

add_subdirectory(src/lib)
add_subdirectory(src/test)

add_subdirectory(src/app)

set (CMAKE_CXX_STANDARD 17)

cmake_minimum_required(VERSION 3.13)
project(pe)

#/Users/marcfervil/Documents/Programming/DreamLLVM/DreamLLVM/Build/libdreamlang.dylib
add_executable(pe ${CMAKE_CURRENT_SOURCE_DIR}/../lib/dream_output.o )

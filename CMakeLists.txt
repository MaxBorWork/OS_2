cmake_minimum_required(VERSION 3.13)
project(OS_2)

set(CMAKE_CXX_STANDARD 14)

set( CMAKE_CXX_FLAGS " -pthread " )

add_executable(OS_2 main.cpp philosopher.cpp philosopher.h fork.cpp fork.h)
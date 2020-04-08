cmake_minimum_required(VERSION 3.15)
project(bytes C)

set(CMAKE_C_STANDARD 99)

add_executable(bytes main.c bytes.c bytes.h)
cmake_minimum_required(VERSION 3.28)
project(
  libzero
  VERSION 0.1.2
  DESCRIPTION "Lib that does nothing"
  LANGUAGES CXX)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

include(NoInSourceBuilds)
add_subdirectory(src bin)
include(Install)
include(Package)

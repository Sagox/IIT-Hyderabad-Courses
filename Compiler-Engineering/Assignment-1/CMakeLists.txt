cmake_minimum_required(VERSION 3.10)
find_package(LLVM REQUIRED CONFIG)
message(STATUS ${LLVM_VERSION})
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})

add_subdirectory(variable-footprint)

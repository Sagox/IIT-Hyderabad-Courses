cmake_minimum_required(VERSION 3.10)
option(USE_CXX_EXCEPTIONS "Enable C++ exception support" ON)
SET(GCC_COVERAGE_COMPILE_FLAGS "-fexceptions")
add_definitions(${GCC_COVERAGE_COMPILE_FLAGS})
add_llvm_library(Footprint MODULE
        variable-footprint-pass.cpp
)


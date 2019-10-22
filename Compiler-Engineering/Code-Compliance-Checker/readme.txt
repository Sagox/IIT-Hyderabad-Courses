To run do the following:
1) Create a folder foo at llvm-project/clang/tools.
2) In the CMakeLists.txt at llvm-project/clang/tools add the line add_clang_subdirectory(foo).
3) Add the two given files to folder foo.
4) From llvm-project/build run "make floatCmp"
5) floatCmp <filename.c> --


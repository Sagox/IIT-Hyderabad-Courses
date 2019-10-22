set(LLVM_LINK_COMPONENTS support)

add_clang_executable(floatCmp
	FloatCmp.cpp
  )
target_link_libraries(floatCmp
  PRIVATE
  clangTooling
  clangBasic
  clangASTMatchers
  )

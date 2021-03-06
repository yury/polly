# Copyright (c) 2013, 2019, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_CLANG_LIBCXX98_CMAKE)
  return()
else()
  set(POLLY_CLANG_LIBCXX98_CMAKE 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

polly_init(
    "clang / LLVM Standard C++ Library (libc++) / c++98 support"
    "Unix Makefiles"
)

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/compiler/clang.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/library/std/libcxx.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/cxx98.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/os/osx.cmake")

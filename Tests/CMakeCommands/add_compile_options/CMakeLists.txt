cmake_minimum_required(VERSION 3.10)

if(POLICY CMP0129)
  cmake_policy(SET CMP0129 NEW)
endif()

project(add_compile_options)

add_compile_options(-DTEST_OPTION)

add_executable(add_compile_options main.cpp)

if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|LCC")
  target_compile_definitions(add_compile_options
    PRIVATE
      "DO_GNU_TESTS"
  )
endif()

add_compile_options(-rtti)
add_library(imp UNKNOWN IMPORTED)
get_target_property(_res imp COMPILE_OPTIONS)
if (_res)
  message(SEND_ERROR "add_compile_options populated the COMPILE_OPTIONS target property")
endif()

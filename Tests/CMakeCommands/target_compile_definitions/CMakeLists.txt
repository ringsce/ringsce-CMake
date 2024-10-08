cmake_minimum_required(VERSION 3.10)

project(target_compile_definitions)

add_executable(target_compile_definitions
  "${CMAKE_CURRENT_SOURCE_DIR}/main.cpp"
)
target_compile_definitions(target_compile_definitions
  PRIVATE MY_PRIVATE_DEFINE
  PUBLIC MY_PUBLIC_DEFINE
  INTERFACE MY_INTERFACE_DEFINE
)

add_executable(consumer
  "${CMAKE_CURRENT_SOURCE_DIR}/consumer.cpp"
)

target_compile_definitions(consumer
  PRIVATE $<TARGET_PROPERTY:target_compile_definitions,INTERFACE_COMPILE_DEFINITIONS>
  -DDASH_D_DEFINE
)

# Test no items
target_compile_definitions(consumer
  PRIVATE
)

target_sources(consumer PRIVATE
  "${CMAKE_CURRENT_SOURCE_DIR}/consumer.c"
)
target_compile_definitions(consumer
  PRIVATE
    CONSUMER_LANG_$<COMPILE_LANGUAGE>
    LANG_IS_CXX=$<COMPILE_LANGUAGE:CXX>
    LANG_IS_C=$<COMPILE_LANGUAGE:C>
    LANG_IS_C_OR_CXX=$<COMPILE_LANGUAGE:C,CXX>
)
if(CMAKE_GENERATOR MATCHES "Visual Studio|Xcode")
  target_compile_definitions(consumer
    PRIVATE TEST_LANG_DEFINES_FOR_VISUAL_STUDIO_OR_XCODE
  )
endif()

add_definitions(-DSOME_DEF)
add_library(imp UNKNOWN IMPORTED)
get_target_property(_res imp COMPILE_DEFINITIONS)
if (_res)
  message(SEND_ERROR "add_definitions populated the COMPILE_DEFINITIONS target property")
endif()

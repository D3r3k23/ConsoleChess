
cmake_minimum_required(VERSION 3.16)

if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()
message("${CMAKE_BUILD_TYPE} build.")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project(ConsoleChess)

add_executable(ConsoleChess)
target_include_directories(ConsoleChess PRIVATE inc)
add_subdirectory(src)

add_subdirectory(lib/DrkEngine)
target_link_libraries(ConsoleChess PRIVATE DrkEngine)

set_target_properties(ConsoleChess
  PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED ON
)

target_compile_options(ConsoleChess
  PRIVATE
    -Wall
    -Wextra
)

set(OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
set_target_properties(ConsoleChess DrkEngine
  PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${OUTPUT_DIRECTORY}"
    LIBRARY_OUTPUT_DIRECTORY "${OUTPUT_DIRECTORY}/lib"
    ARCHIVE_OUTPUT_DIRECTORY "${OUTPUT_DIRECTORY}/lib"
)

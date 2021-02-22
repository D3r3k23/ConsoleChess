
cmake_minimum_required(VERSION 3.16)
project(ConsoleChess)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")

add_executable(ConsoleChess)
target_include_directories(ConsoleChess PRIVATE inc)
add_subdirectory(src)

add_subdirectory(lib/DrkEngine)
target_link_libraries(ConsoleChess PRIVATE DrkEngine)
target_include_directories(ConsoleChess PRIVATE lib/DrkEngine/inc)

set(OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
set_target_properties(ConsoleChess DrkEngine
  PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${OUTPUT_DIRECTORY}"
    LIBRARY_OUTPUT_DIRECTORY "${OUTPUT_DIRECTORY}/lib"
    ARCHIVE_OUTPUT_DIRECTORY "${OUTPUT_DIRECTORY}/lib"
)

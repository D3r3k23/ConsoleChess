cmake_minimum_required(VERSION 3.16)
project(ConsoleChess)

add_executable(ConsoleChess)
target_include_directories(ConsoleChess PRIVATE inc)
add_subdirectory(src)


set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")

set(OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/build/${CMAKE_BUILD_TYPE}/bin")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${OUTPUT_DIRECTORY}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${OUTPUT_DIRECTORY}/lib")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${OUTPUT_DIRECTORY}/lib")


add_subdirectory(DrkEngine)
target_link_libraries(ConsoleChess PRIVATE DrkEngine)
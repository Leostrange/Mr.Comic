cmake_minimum_required(VERSION 3.22.1)

project(mrcomic_djvu)

add_library(mrcomic_djvu SHARED native_djvu_bridge.cpp)

find_library(log-lib log)
find_library(jnigraphics-lib jnigraphics)

target_link_libraries(
    mrcomic_djvu
    ${log-lib}
    ${jnigraphics-lib}
    dl
)

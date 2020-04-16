cmake_minimum_required(VERSION 3.2)

include(GNUInstallDirs)
include(cmake/Macros.cmake)

project(Neptune
        LANGUAGES CXX
        VERSION 1.2.3)

option(BUILD_SHARED_LIBS "Build shared libraries" ON)
option(TARGET_ANDROID "Build for android" OFF)

if(TARGET_ANDROID)
  set(CMAKE_SYSTEM_NAME "Android")
endif()

include_directories("${CMAKE_CURRENT_SOURCE_DIR}/Source/Core")
add_compile_definitions("NPT_CONFIG_ENABLE_LOGGING")

add_subdirectory(Source)

configure_file(cmake/neptune.pc.cmake
               ${CMAKE_CURRENT_BINARY_DIR}/neptune.pc @ONLY)

install(TARGETS ${PROJECT_NAME}
        PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR})

install(FILES cmake/FindNeptune.cmake
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME})

install(FILES ${CMAKE_CURRENT_BINARY_DIR}/neptune.pc
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/pkgconfig)

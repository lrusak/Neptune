set(SOURCES NptStdcEnvironment.cpp)

if(NOT CMAKE_SYSTEM_NAME STREQUAL "Android")
  list(APPEND SOURCES NptStdcConsole.cpp
                      NptStdcDebug.cpp
                      NptStdcFile.cpp)
endif()

core_add_library(StdC)

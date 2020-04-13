if(CMAKE_SYSTEM_NAME STREQUAL "Windows" OR CMAKE_SYSTEM_NAME STREQUAL "WindowsStore")
  add_subdirectory(Win32)
endif()

if(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
  add_subdirectory(Posix)
  add_subdirectory(Apple)
  add_subdirectory(Bsd)
endif()

if(CMAKE_SYSTEM_NAME STREQUAL "Linux" OR CMAKE_SYSTEM_NAME STREQUAL "Android")
  add_subdirectory(Posix)
  add_subdirectory(Null)
  add_subdirectory(Bsd)
endif()

if(CMAKE_SYSTEM_NAME STREQUAL "FreeBSD")
  add_subdirectory(Posix)
  add_subdirectory(Null)
  add_subdirectory(Bsd)
endif()

if(CMAKE_SYSTEM_NAME STREQUAL "Android")
  add_subdirectory(Android)
endif()

add_subdirectory(StdC)

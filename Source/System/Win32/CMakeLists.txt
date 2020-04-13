set(SOURCES NptWin32Console.cpp
            NptWin32Debug.cpp
            NptWin32DynamicLibraries.cpp
            NptWin32File.cpp
            NptWin32HttpProxy.cpp
            NptWin32MessageQueue.cpp
            NptWin32Network.cpp
            NptWin32Queue.cpp
            NptWin32SerialPort.cpp
            NptWin32System.cpp
            NptWin32Threads.cpp
            NptWin32Time.cpp)

set(HEADERS NptWin32MessageQueue.h
            NptWin32Network.h
            NptWin32Threads.h)

core_add_library(Win32)

set(SOURCES NptBsdNetwork.cpp
            NptBsdResolver.cpp
            NptBsdSockets.cpp)

set(HEADERS NptBsdBlockerSocket.h)

core_add_library(Bsd)
add_compile_definitions("NPT_CONFIG_HAVE_GETADDRINFO")

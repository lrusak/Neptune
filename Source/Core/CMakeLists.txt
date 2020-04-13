set(SOURCES Neptune.cpp
            NptAutomaticCleaner.cpp
            NptBase64.cpp
            NptBufferedStreams.cpp
            NptCommon.cpp
            NptConsole.cpp
            NptCrypto.cpp
            NptDataBuffer.cpp
            NptDebug.cpp
            NptDigest.cpp
            NptDynamicLibraries.cpp
            NptFile.cpp
            NptHash.cpp
            NptHttp.cpp
            NptJson.cpp
            NptList.cpp
            NptLogging.cpp
            NptMessaging.cpp
            NptNetwork.cpp
            NptQueue.cpp
            NptResults.cpp
            NptRingBuffer.cpp
            NptSimpleMessageQueue.cpp
            NptSockets.cpp
            NptStreams.cpp
            NptStrings.cpp
            NptSystem.cpp
            NptThreads.cpp
            NptTime.cpp
            NptTls.cpp
            NptUri.cpp
            NptUtils.cpp
            NptXml.cpp
            NptZip.cpp)

set(HEADERS Neptune.h
            NptArray.h
            NptAutomaticCleaner.h
            NptAutoreleasePool.h
            NptBase64.h
            NptBufferedStreams.h
            NptCommon.h
            NptConfig.h
            NptConsole.h
            NptConstants.h
            NptCrypto.h
            NptDataBuffer.h
            NptDebug.h
            NptDefs.h
            NptDigest.h
            NptDynamicCast.h
            NptDynamicLibraries.h
            NptFile.h
            NptHash.h
            NptHttp.h
            NptInterfaces.h
            NptJson.h
            NptList.h
            NptLogging.h
            NptMap.h
            NptMessaging.h
            NptNetwork.h
            NptQueue.h
            NptReferences.h
            NptResults.h
            NptRingBuffer.h
            NptSelectableMessageQueue.h
            NptSerialPort.h
            NptSimpleMessageQueue.h
            NptSockets.h
            NptStack.h
            NptStreams.h
            NptStrings.h
            NptSystem.h
            NptThreads.h
            NptTime.h
            NptTlsDefaultTrustAnchorsBase.h
            NptTlsDefaultTrustAnchorsExtended.h
            NptTls.h
            NptTypes.h
            NptUri.h
            NptUtils.h
            NptVersion.h
            NptXml.h
            NptZip.h)

foreach(HEADER ${HEADERS})
  list(APPEND PUBLIC_HEADERS "Source/Core/${HEADER}")
endforeach()

add_library(${PROJECT_NAME} ${SOURCES} ${HEADERS})
get_property(DEPENDS GLOBAL PROPERTY core_DEPENDS)
target_link_libraries(${PROJECT_NAME} PUBLIC ${DEPENDS})
set_target_properties(${PROJECT_NAME} PROPERTIES
                                      VERSION ${PROJECT_VERSION}
                                      PUBLIC_HEADER "${PUBLIC_HEADERS}")
add_dependencies(${PROJECT_NAME} ${DEPENDS})

if(CMAKE_SYSTEM_NAME STREQUAL "WindowsStore")
  set_target_properties(${PROJECT_NAME} PROPERTIES STATIC_LIBRARY_FLAGS "/ignore:4264")
endif()

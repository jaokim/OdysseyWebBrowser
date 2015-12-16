set(TESTWEBKITAPI_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")
set(TESTWEBKITAPI_RUNTIME_OUTPUT_DIRECTORY_WTF "${TESTWEBKITAPI_RUNTIME_OUTPUT_DIRECTORY}")

include_directories(
    ${DERIVED_SOURCES_DIR}/ForwardingHeaders
    "${WTF_DIR}/icu"
)

set(test_main_SOURCES
    ${TESTWEBKITAPI_DIR}/mac/mainMac.mm
)

find_library(CARBON_LIBRARY Carbon)
find_library(COCOA_LIBRARY Cocoa)
find_library(COREFOUNDATION_LIBRARY CoreFoundation)
list(APPEND test_wtf_LIBRARIES
    ${CARBON_LIBRARY}
    ${COCOA_LIBRARY}
    ${COREFOUNDATION_LIBRARY}
    libicucore.dylib
)
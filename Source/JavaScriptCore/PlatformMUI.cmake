list(APPEND JavaScriptCore_INCLUDE_DIRECTORIES
    "${WTF_DIR}"
)

add_definitions(-DSTATICALLY_LINKED_WITH_WTF)


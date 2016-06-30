include(awesome-icon-generator.cmake)

configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/theme.lua
    ${CMAKE_CURRENT_BINARY_DIR}/theme.lua)

set(DEST_ROOT ${AWESOME_THEMES_PATH}/zenburn-sonar)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/theme.lua DESTINATION ${DEST_ROOT})
install(FILES site-logosq.png DESTINATION ${DEST_ROOT})
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/layouts DESTINATION ${DEST_ROOT})
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/taglist DESTINATION ${DEST_ROOT})
install(DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/titlebar DESTINATION ${DEST_ROOT})

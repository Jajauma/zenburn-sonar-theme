cmake_minimum_required(VERSION 3.0.0)
project(zenburn-sonar-theme)

set(AWESOME_THEMES_PATH ${CMAKE_INSTALL_PREFIX}/share/awesome/themes
    CACHE PATH "Path to AwesomeWM themes directory")

add_subdirectory(zenburn-sonar)

set(CPACK_PACKAGE_VERSION_MAJOR "0")
set(CPACK_PACKAGE_VERSION_MINOR "6")
set(CPACK_SOURCE_GENERATOR "TBZ2")

set(CPACK_SOURCE_PACKAGE_FILE_NAME
    "${CMAKE_PROJECT_NAME}-${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}")
set(CPACK_SOURCE_IGNORE_FILES
    "/build/;/.git/;.swp$;.gitignore;${CPACK_SOURCE_IGNORE_FILES}")
include(CPack)

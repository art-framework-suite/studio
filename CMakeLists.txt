#
#  studio/CMakeLists.txt
#
#  CMake build file for studio
#  This simply copies files into an install directory - there is no build
#
#  install steps:
#  cd /path/to/build/directory
#  source /path/to/studio/ups/setup_for_development
#  cmake [-DCMAKE_INSTALL_PREFIX=/install/path] $STUDIO_SOURCE
#  make install
#  make package (tar file for ups)

CMAKE_MINIMUM_REQUIRED (VERSION 3.3)
project(studio NONE)

find_package(cetbuildtools REQUIRED)
include(CetCMakeEnv)

# studio has no architecture dependence
cet_cmake_env(noarch)

# source code
add_subdirectory(libexec)
add_subdirectory(completions)
add_subdirectory(ups)

# packaging utility
include(UseCPack)


#add_custom_command(TARGET studio POST_BUILD
#    COMMAND ln -sf ${CMAKE_CURRENT_SOURCE_DIR}/libexec/studio ${CURRENT_SOURCE_DIR}/bin/studio)
#install(CODE "EXECUTE_PROCESS(COMMAND ln -sf ${CMAKE_CURRENT_SOURCE_DIR}/libexec/studio ${CMAKE_CURRENT_SOURCE_DIR}/bin/studio)")

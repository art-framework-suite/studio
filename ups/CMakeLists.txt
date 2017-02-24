
include(CMakePackageConfigHelpers)

execute_process( COMMAND date
                 OUTPUT_VARIABLE datime
                 OUTPUT_STRIP_TRAILING_WHITESPACE )

CONFIGURE_FILE ( ${studio_SOURCE_DIR}/ups/studio.table.in
                 ${studio_BINARY_DIR}/ups/studio.table @ONLY )
CONFIGURE_FILE ( ${studio_SOURCE_DIR}/ups/studio.version.in
                 ${studio_BINARY_DIR}/ups/${UPSFLAVOR}_ @ONLY )
CONFIGURE_FILE ( ${studio_SOURCE_DIR}/ups/studio.current.in
                 ${studio_BINARY_DIR}/ups/${UPSFLAVOR} @ONLY )

INSTALL (FILES ${studio_BINARY_DIR}/ups/studio.table
         DESTINATION ${product}/${version}/ups)
INSTALL (FILES ${studio_BINARY_DIR}/ups/${UPSFLAVOR}_
         DESTINATION ${product}/${version}.version/ )
INSTALL (FILES ${studio_BINARY_DIR}/ups/${UPSFLAVOR}
         DESTINATION ${product}/current.chain/ )

set( distdir ${product}/${version}/cmake )
configure_package_config_file( 
           ${CMAKE_CURRENT_SOURCE_DIR}/product-config.cmake.in
           ${CMAKE_CURRENT_BINARY_DIR}/${product}-config.cmake 
	   INSTALL_DESTINATION ${distdir} )

# allowed COMPATIBILITY values are:
# AnyNewerVersion ExactVersion SameMajorVersion
write_basic_package_version_file(
           ${CMAKE_CURRENT_BINARY_DIR}/${product}-config-version.cmake
	   VERSION ${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH}
	   COMPATIBILITY AnyNewerVersion )

install( FILES ${CMAKE_CURRENT_BINARY_DIR}/${product}-config.cmake
               ${CMAKE_CURRENT_BINARY_DIR}/${product}-config-version.cmake
         DESTINATION ${distdir} )
process_ups_files()
 
cet_cmake_config()


include(CMakePackageConfigHelpers)

CONFIGURE_FILE ( ${studio_SOURCE_DIR}/ups/studio.current.in
                 ${studio_BINARY_DIR}/ups/${UPSFLAVOR} @ONLY )

INSTALL (FILES ${studio_BINARY_DIR}/ups/${UPSFLAVOR}
         DESTINATION ${product}/current.chain/ )

process_ups_files()
 
cet_cmake_config()

#
# Note that we use wildcards and globbing to make sure all sub-commands are picked up.
# This means that CMake must be run manually when new files are added.
#
install_scripts(LIST
  .wrapper.sh
  )

file(GLOB studio_SUBCOMMANDS
     "studio-*"
)

install(PROGRAMS studio ${studio_SUBCOMMANDS}
        DESTINATION "${product}/${version}/libexec"
)

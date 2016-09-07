#install_scripts( LIST
#  studio-sh-shell
#  studio-init
#  studio-help
#  studio-completions
#  studio-commands
#  studio-build
#  studio
#  studio-example
#  studio-create
#  wrapper.sh
#  )
install_scripts( LIST
  .wrapper.sh
  )


install(PROGRAMS studio-sh-shell
		 studio-init
		 studio-help
		 studio-completions
		 studio-commands
		 studio-build
		 studio
		 studio-example
		 studio-create
		 studio-clean
 		 studio-liblist

        DESTINATION "${product}/${version}/libexec")
#cet_install_files( DIRNAME libexec 
#               LIST "studio-sh-shell;studio-init;studio-help;studio-completions;studio-commands;studio-build;studio;studio-example;studio-create"
#             )

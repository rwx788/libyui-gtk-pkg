##### PROJECTINFO for CMake

SET( BASELIB		"yui" )		# don't change this

##### MAKE ALL NEEDED CHANGES HERE #####

SET( SUBDIRS		src )
SET( PLUGINNAME		"gtk-pkg" )
SET( LIB_DEPS		GTK3 Zypp )
SET( INTERNAL_DEPS	Libyui Libyui-gtk )
SET( LIB_LINKER		zypp )
SET( EXTRA_INCLUDES	)
SET( PROGSUBDIR		"" )
SET( URL                "http://github.com/libyui/" )
SET( SUMMARY            "Libyui - Gtk Package Selector" )
SET( DESCRIPTION        "This package contains the Gtk package selector\ncomponent for libYUI.\n" )


# set libzypp version
execute_process (COMMAND pkg-config --modversion libzypp COMMAND awk -F. "{ printf \"%d\", ($1 * 1000 + $2) * 1000 + $3;}" OUTPUT_VARIABLE ZYPP_VERSION)
if (NOT ZYPP_VERSION)
  message (FATAL_ERROR "Could not parse Zypp version.")
endif (NOT ZYPP_VERSION)

# create config.h (see config.h.cmake)
configure_file (${CMAKE_CURRENT_SOURCE_DIR}/src/config.h.cmake ${CMAKE_CURRENT_BINARY_DIR}/src/config.h)

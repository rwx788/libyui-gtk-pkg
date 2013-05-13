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


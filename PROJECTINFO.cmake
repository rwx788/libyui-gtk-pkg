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

# libzypp-12.5.0 changes:
# - HistoryLogReader: new HistoryLogData based API for parsing the new
#   history file entries (fate#312521)
#   The old HistoryItem based API is deprecated but will
#   still be available for a while if you compile with
#   -DWITH_DEPRECATED_HISTORYITEM_API.
#
#  roughly:
#  ///   - // old style
#  ///   - HistoryItem::Ptr ptr;
#  ///   - Date d = ptr->date;
#  ///   + // new style
#  ///   + HistoryLogData::Ptr ptr;
#  ///   + Date d = ptr->date();
#
#  http://doc.opensuse.org/projects/libzypp/HEAD/classzypp_1_1HistoryLog.html
ADD_DEFINITIONS(-DWITH_DEPRECATED_HISTORYITEM_API=1)

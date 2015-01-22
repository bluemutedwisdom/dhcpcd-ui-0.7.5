# linux
PREFIX=		/usr/local
SYSCONFDIR=	/usr/local/etc
BINDIR=		/usr/local/bin
MANDIR=		/usr/local/share/man
CFLAGS+=	-DNDEBUG
CFLAGS+=	-DBG_SCAN
LIB_INTL=	
LIBNAME=	lib
LIBDIR=		${PREFIX}/${LIBNAME}
LIB_DHCPCD=	-Wl,-Bstatic -ldhcpcd -Wl,-Bdynamic
LDADD+=		-Wl,--as-needed
GTK_CFLAGS=	-pthread -I/usr/include/gtk-2.0 -I/usr/lib/arm-linux-gnueabihf/gtk-2.0/include -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/glib-2.0 -I/usr/lib/arm-linux-gnueabihf/glib-2.0/include -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng12 -I/usr/include/harfbuzz  
GTK_LIBS=	-lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lglib-2.0  
MKICONS=	icons
UI=		libdhcpcd dhcpcd-gtk
MKDIR=		${TOPDIR}/mk

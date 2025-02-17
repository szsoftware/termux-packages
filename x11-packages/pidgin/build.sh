TERMUX_PKG_HOMEPAGE=https://pidgin.im/
TERMUX_PKG_DESCRIPTION="Multi-protocol instant messaging client"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.14.10
TERMUX_PKG_SRCURL=https://downloads.sourceforge.net/pidgin/pidgin-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=454b1b928bc6bcbb183353af30fbfde5595f2245a3423a1a46e6c97a2df22810
TERMUX_PKG_DEPENDS="gtk2, libgnutls, libidn, libsasl, libsm, libxext, libxss"

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-gevolution
--disable-gstreamer
--disable-gtkspell
--disable-vv
--disable-meanwhile
--disable-avahi
--disable-dbus
--disable-perl
--disable-tcl
--disable-tk
"

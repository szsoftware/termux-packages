TERMUX_PKG_HOMEPAGE=https://lxqt.github.io
TERMUX_PKG_DESCRIPTION="LXQt Image Viewer"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="Simeon Huang <symeon@librehat.com>"
TERMUX_PKG_VERSION="1.1.0"
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL="https://github.com/lxqt/lximage-qt/releases/download/${TERMUX_PKG_VERSION}/lximage-qt-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=8b8b7825eb0d046b4a4d5476329513ad8e3066462c69b6da554ecd6a8f455459
TERMUX_PKG_DEPENDS="glib, libc++, libexif, libfm-qt, libx11, libxfixes, qt5-qtbase, qt5-qtsvg, qt5-qtx11extras"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt5-qtbase-cross-tools, qt5-qttools-cross-tools"
TERMUX_PKG_AUTO_UPDATE=true

TERMUX_PKG_HOMEPAGE=https://lxqt.github.io
TERMUX_PKG_DESCRIPTION="Tools to configure LXQt and the underlying operating system"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="Simeon Huang <symeon@librehat.com>"
TERMUX_PKG_VERSION="1.1.0"
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL="https://github.com/lxqt/lxqt-config/releases/download/${TERMUX_PKG_VERSION}/lxqt-config-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=454550ae75b875eb59b4d0c93823b62ec1de3c781423607793d32055b1401d38
TERMUX_PKG_DEPENDS="libc++, liblxqt, libqtxdg, libxcb, libxcursor, libxfixes, qt5-qtbase, qt5-qtx11extras, shared-mime-info, zlib"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt5-qtbase-cross-tools, qt5-qttools-cross-tools"
# libinput is required to switch on input configuration
# libkscreen is required to switch on monitor configuration, which in turn requires wayland
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DWITH_INPUT=OFF -DWITH_MONITOR=OFF"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
    # This is required because of the private lib used by lxqt-config-appearance
    LDFLAGS+=" -Wl,-rpath=${TERMUX_PREFIX}/lib/lxqt-config"
    export LDFLAGS
}


################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="libX11"
PKG_VERSION="1.6.2"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://www.x.org/"
PKG_URL="http://xorg.freedesktop.org/archive/individual/lib/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS=""
PKG_BUILD_DEPENDS_TARGET="toolchain xproto:host xproto util-macros xextproto xcmiscproto bigreqsproto kbproto inputproto xtrans libXau libxcb util-macros"
PKG_PRIORITY="optional"
PKG_SECTION="x11/lib"
PKG_SHORTDESC="libx11: The X11 library"
PKG_LONGDESC="LibX11 is the main X11 library containing all the client-side code to access the X11 windowing system."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--disable-secure-rpc \
                           --enable-loadable-i18n \
                           --enable-xthreads \
                           --disable-xcms \
                           --enable-xlocale \
                           --disable-xlocaledir \
                           --enable-xkb \
                           --with-keysymdefdir=$SYSROOT_PREFIX/usr/include/X11 \
                           --disable-xf86bigfont \
                           --enable-malloc0returnsnull \
                           --disable-specs \
                           --without-xmlto \
                           --without-fop \
                           --enable-composecache \
                           --disable-lint-library \
                           --disable-ipv6 \
                           --without-launchd \
                           --without-lint"

pre_configure_target() {
  export CC_FOR_BUILD="$HOST_CC"
  export CPPFLAGS_FOR_BUILD="$HOST_CPPFLAGS"
  export CFLAGS_FOR_BUILD="$HOST_CFLAGS"
  export LDFLAGS_FOR_BUILD="$HOST_LDFLAGS"
}

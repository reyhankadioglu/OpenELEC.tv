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

PKG_NAME="font-bitstream-type1"
PKG_VERSION="1.0.3"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://www.X.org"
PKG_URL="http://xorg.freedesktop.org/archive/individual/font/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS=""
PKG_BUILD_DEPENDS_TARGET="toolchain util-macros"
PKG_PRIORITY="optional"
PKG_SECTION="x11/font"
PKG_SHORTDESC="font-bitstream-type1: Bitstream font family"
PKG_LONGDESC="Bitstream font family."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--with-fontrootdir=/usr/share/fonts"

post_install() {
  mkfontdir $INSTALL/usr/share/fonts/Type1
  mkfontscale $INSTALL/usr/share/fonts/Type1
}

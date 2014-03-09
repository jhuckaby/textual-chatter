#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 1>&2
   exit 1
fi

BUILD_DIR="/opt/textual-chatter-install"
PKG_FILENAME="TextualChatterInstaller.pkg"

rm -rf $BUILD_DIR
mkdir -p $BUILD_DIR/Textual/Chatter $BUILD_DIR/install || exit 1;

cp src/*.css src/*.js src/*.plist $BUILD_DIR/Textual/Chatter/ || exit 1;

cp src/postinstall $BUILD_DIR/install/ || exit 1;
chmod 775 $BUILD_DIR/install/postinstall || exit 1;

chown -R root:wheel $BUILD_DIR || exit 1;

pkgbuild --scripts $BUILD_DIR/install --identifier "com.jhuckaby.irc.textual.chatter" --version "1.0.0" --install-location $BUILD_DIR/Textual --root $BUILD_DIR/Textual $PKG_FILENAME || exit 1;

rm -rf $BUILD_DIR

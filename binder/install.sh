#!/bin/sh

INSTALL_LOCATION=./code-server
INSTALL_ARCH=x86_64
INSTALL_TARGET=unknown-linux-gnu

if [ "$(uname)" = "Darwin" ]; then
  INSTALL_TARGET=apple-darwin-signed
fi

ARCH=$(uname -m)
if [ $ARCH = "aarch64" ] || [ $ARCH = "arm64" ]; then
  INSTALL_ARCH=aarch64
fi

INSTALL_URL=https://aka.ms/vscode-server-launcher/$INSTALL_ARCH-$INSTALL_TARGET
echo "Installing from $INSTALL_URL"

wget $INSTALL_URL -O $INSTALL_LOCATION


chmod +x $INSTALL_LOCATION
#!/bin/sh

# install the pyinstaller
pip install pyinstaller

# download the pashmak
wget https://github.com/pashmaklang/pashmak/archive/v$1.zip -O pashmak.zip
unzip pashmak.zip
mv pashmak-* pashmak
cd pashmak

# compile and install
make
mkdir -p /Users/runner/.local/bin
cp ./dist/pashmak /Users/runner/.local/bin

# show the installed interpreter info
pashmak --info

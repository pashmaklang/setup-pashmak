#!/bin/sh

# setup the python
brew install python

# install the pyinstaller
python3 -m pip install pyinstaller

# download the pashmak
wget https://github.com/pashmaklang/pashmak/archive/v$1.zip -O pashmak.zip
unzip pashmak.zip
mv pashmak-* pashmak
cd pashmak

# compile and install
make
sudo make install INSTALLATION_PATH=/usr/local/bin
pashmak --info

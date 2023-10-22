#!/bin/bash

# Clone Repository
git clone https://github.com/gerdoe-jr/xpanic-1
cd xpanic-1

# Download Bam Binary
wget https://raw.githubusercontent.com/teeframe/mods-repository/main/resources/bam
chmod 764 bam

# Compile Mod
./bam server_release

# Move Binary & Delete Repository
mv DDNet-Server ../DDNet-Server
cd ..
rm -rf xpanic-1
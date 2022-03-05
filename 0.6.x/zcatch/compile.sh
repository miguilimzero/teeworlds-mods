#!/bin/bash

# Clone Repository
git clone https://github.com/ddnet/zcatch
cd zcatch

# Download Bam Binary
wget https://raw.githubusercontent.com/teeframe/mods-repository/main/resources/bam
chmod 764 bam

# Compile Mod
./bam server_release

# Move Binary & Delete Repository
mv zCatch-Server ../zCatch-Server
cd ..
rm -rf zcatch
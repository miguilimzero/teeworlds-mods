#!/bin/bash

# Clone Repository
git clone https://github.com/teeframe/xpanic
cd xpanic

# Download Bam Binary
wget https://raw.githubusercontent.com/teeframe/mods-repository/main/resources/bam
chmod 764 bam

# Compile Mod
./bam server_release

# Move Binary & Delete Repository
mv xPanic-Server ../xPanic-Server
cd ..
rm -rf xpanic
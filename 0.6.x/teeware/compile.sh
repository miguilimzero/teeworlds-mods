#!/bin/bash

# Clone Repository
git clone https://github.com/headshot2017/teeware-mod
cd teeware-mod

# Download Bam Binary
wget https://raw.githubusercontent.com/miguilimzero/teeworlds-mods/main/resources/bam
chmod 764 bam

# Compile Mod
./bam server_release

# Move Binary & Delete Repository
mv TeeWare ../TeeWare-Server
cd ..
rm -rf teeware-mod
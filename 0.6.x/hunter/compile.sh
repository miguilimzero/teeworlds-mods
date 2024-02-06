#!/bin/bash

# Clone Repository
git clone https://github.com/yangfl/teeworlds-hunter
cd teeworlds-hunter

# Download Bam Binary
wget https://raw.githubusercontent.com/miguilimzero/teeworlds-mods/main/resources/bam
chmod 764 bam

# Compile Mod
./bam server_release

# Move Binary & Delete Repository
mv hunter_srv ../Hunter-Server
cd ..
rm -rf teeworlds-hunter
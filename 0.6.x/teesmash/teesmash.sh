#!/bin/bash

# Clone Repository
git clone https://github.com/timazuki/TeeSmash
cd TeeSmash

# Download Bam Binary
wget https://raw.githubusercontent.com/teeframe/mods-compiler/main/resources/bam
chmod 764 bam

# Compile Mod
./bam server_release

# Move Binary & Delete Repository
mv teeworlds_srv ../TeeSmash-Server
cd ..
rm -rf TeeSmash
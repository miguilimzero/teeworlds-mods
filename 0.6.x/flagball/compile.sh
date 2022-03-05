#!/bin/bash

# Clone Repository
git clone https://github.com/teeframe/flagball
cd flagball

# Download Bam Binary
wget https://raw.githubusercontent.com/teeframe/mods-repository/main/resources/bam
chmod 764 bam

# Compile Mod
./bam server_release

# Move Binary & Delete Repository
mv teeworlds_srv ../Flagball-Server
cd ..
rm -rf flagball
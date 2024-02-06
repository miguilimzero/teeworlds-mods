#!/bin/bash

# Clone Repository
git clone https://github.com/miukmiuk/teeworlds_streak.git
cd teeworlds_streak

# Download Bam Binary
wget https://raw.githubusercontent.com/miguilimzero/teeworlds-mods/main/resources/bam
chmod 764 bam

# Compile Mod
./bam server_release

# Move Binary & Delete Repository
mv teeworlds_srv ../teeworlds_srv
cd ..
rm -rf teeworlds_streak
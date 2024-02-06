#!/bin/bash

# Clone Repository
git clone https://github.com/unique-clan/football
cd football

# Download Bam Binary
wget https://raw.githubusercontent.com/miguilimzero/teeworlds-mods/main/resources/bam
chmod 764 bam

# Compile Mod
./bam server_release

# Move Binary & Delete Repository
mv teeworlds_srv ../Football-Server
cd ..
rm -rf football
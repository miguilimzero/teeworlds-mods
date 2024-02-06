#!/bin/bash

# Clone Repository
git clone https://github.com/miguilimzero/killing-floor
cd killing-floor

# Download Bam Binary
wget https://raw.githubusercontent.com/miguilimzero/teeworlds-mods/main/resources/bam
chmod 764 bam

# Compile Mod
./bam server_release

# Move Binary & Delete Repository
mv teeworlds_srv ../KillingFloor-Server
cd ..
rm -rf killing-floor
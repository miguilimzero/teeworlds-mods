#!/bin/bash

# Clone Repository
git clone https://github.com/teeframe/killing-floor
cd killing-floor

# Download Bam Binary
wget https://raw.githubusercontent.com/teeframe/mods-repository/main/resources/bam
chmod 764 bam

# Compile Mod
./bam server_release

# Move Binary & Delete Repository
mv teeworlds_srv ../KillingFloor-Server
cd ..
rm -rf killing-floor
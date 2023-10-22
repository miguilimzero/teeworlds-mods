#!/bin/bash

# Clone Repository
git clone https://github.com/ST-Chara/teeworlds-CStrike
cd teeworlds-CStrike

# Download Bam Binary
wget https://raw.githubusercontent.com/teeframe/mods-repository/main/resources/bam
chmod 764 bam

# Compile Mod
./bam server_release

# Move Binary & Delete Repository
mv CStrike_srv ../CStrike_srv
cd ..
rm -rf teeworlds-CStrike
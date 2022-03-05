# Mods Repository

This repository contains scripts to build server binaries and binaries for mods that source were never published for as many known mods of Teeworlds ecosystem. The repository is also responsible for the storage of map files from unmaintained mods.

## Supported Mods

**Maintained** - List of supported mods in Teeworlds 0.6.x:

- DDNet (https://github.com/ddnet/ddnet)
- InfClass (https://github.com/InfectionDust/teeworlds-infclassr)
- MMOTee (https://github.com/MrCosmo666/Teeworlds-MRPG)

**Unmaintained** - List of supported mods in Teeworlds 0.6.x:

- Bomb Tag (https://github.com/unique-clan/bomb)
- Flagball (https://github.com/teeframe/flagball)
- Football (https://github.com/unique-clan/football)
- HMH-Monster (https://github.com/teeframe/hmh-monster)
- Hunter (https://github.com/yangfl/teeworlds-hunter)
- Killing Floor (https://github.com/Siile/KillingFloor)
- TeeSmash (https://github.com/timazuki/TeeSmash)
- TeeWare (https://github.com/headshot2017/teeware-mod)
- xPanic (https://github.com/teeframe/xpanic)
- zCatch (https://github.com/ddnet/zcatch)

## Binary Mods

For these mods, there are binaries that were published by their creators without the source. You can download them directly from this repository.

List of binary mods in Teeworlds 0.6.x:

- Battlefield (https://www.teeworlds.com/forum/viewtopic.php?id=9178)
- zChaos (https://www.teeworlds.com/forum/viewtopic.php?id=9682)

List of binary mods in Teeworlds 0.7.x:

- LumLvl (https://www.teeworlds.com/forum/viewtopic.php?id=12849)

## Installing Dependencies

First you must install the necessary dependencies on your system. You can run this script to install the necessary dependencies for compiling the mods (Scripts are made assuming you are running **Ubuntu 20.04**).

```
wget https://raw.githubusercontent.com/teeframe/mods-repository/main/resources/default-dependencies.sh  -O - | sh
```

## Compiling Mods (Teeworlds 0.6.x)

Now you just need to choose the script corresponding to the 0.6.x mod you want to compile:

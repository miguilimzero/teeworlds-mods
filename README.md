# Mods Repository

This repository contains scripts to build server binaries and binaries for mods that source were never published for as many known mods of Teeworlds ecosystem. The repository is also responsible for the storage of map files from unmaintained mods.

## Supported Mods

| Name | Website| Source | Forum Post | State | Version  | Client |
|---------|---------|---------|---------|---------|---------|---------|
| **DDNet** |  [Website](https://ddnet.tw/) | [Source](https://github.com/ddnet/ddnet) |  ------------------- | Maintained | 0.6.x |***Vanilla Client** |
| **InfClass** | -------------------  | [Source](https://github.com/InfectionDust/teeworlds-infclassr) | [Forum Post](https://www.teeworlds.com/forum/viewtopic.php?id=12532) | Maintained | 0.6.x |***Vanilla Client** |
| **MMOTee** |  ------------------- | [Source](https://github.com/kurosio/Teeworlds-Mmotee-Old) | [Forum Post](https://www.teeworlds.com/forum/viewtopic.php?id=12612) | Maintained | 0.6.x |***Vanilla Client** |
| **ZombPanic** | ------------------- | [Source](https://github.com/teeframe/zombpanic) |  ------------------- |  Maintained | 0.6.x |***Vanilla Client** |
| **Bomb Tag** | ------------------- | [Source](https://github.com/unique-clan/bomb) | ------------------- | Unmaintained | 0.6.x |***Vanilla Client** |
| **Flagball** | ------------------- | [Source](https://github.com/teeframe/flagball) | [Forum Post](https://www.teeworlds.com/forum/viewtopic.php?id=12899) | Unmaintained | 0.6.x |***Vanilla Client** |
| **Football** | ------------------- | [Source](https://github.com/unique-clan/football) | ------------------- | Unmaintained | 0.6.x |***Vanilla Client** |
| **HMH-Monster** | ------------------- | [Source](https://github.com/teeframe/hmh-monster) | ------------------- | Unmaintained | 0.6.x |***Vanilla Client** |
| **Hunter** | ------------------- | [Source](https://github.com/yangfl/teeworlds-hunter) | [Forum Post](https://www.teeworlds.com/forum/viewtopic.php?id=10408) | Unmaintained | 0.6.x |***Vanilla Client** |
| **Killing Floor** | ------------------- | [Source](https://github.com/Siile/KillingFloor) | ------------------- | Unmaintained | 0.6.x |***Vanilla Client** |
| **TeeSmash** | ------------------- | [Source](https://github.com/timazuki/TeeSmash) | [Forum Post](https://www.teeworlds.com/forum/viewtopic.php?id=11878) | Unmaintained | 0.6.x |***Vanilla Client** |
| **TeeWare** | ------------------- | [Source](https://github.com/headshot2017/teeware-mod) | ------------------- | Unmaintained | 0.6.x |***Vanilla Client** |
| **zCatch** | ------------------- | [Source](https://github.com/ddnet/zcatch) | ------------------- | Unmaintained | 0.6.x |***Vanilla Client** |
| **MMOTee** | ------------------- | [Source](https://github.com/MrCosmo666/Teeworlds-MRPG) | ------------------- | Maintained | 0.7.x |***Custom Client** |
| **CStrike** | ------------------- | [Source](https://github.com/ST-Chara/teeworlds-CStrike) | ------------------- | Unmaintained | 0.7.x |***Vanilla Client** |
| **Nodes** | [Website](https://nodes.teeworlds.dev/) |[Source](https://github.com/teeworldsnetwork/nodes) | ------------------- | Unmaintained | 0.7.x |***Custom Client** |



## Binary Mods

For these mods, there are binaries that were published by their creators without the source. You can download them directly from this repository.

| Name | Forum Post | Version |
|--------|---------|---------|
| **Battlefield** | [Forum Post](https://www.teeworlds.com/forum/viewtopic.php?id=9178) | 0.6.x |
| **zChaos** | [Forum Post](https://www.teeworlds.com/forum/viewtopic.php?id=9682) | 0.6.x |
| **LumLvl** | [Forum Post](https://www.teeworlds.com/forum/viewtopic.php?id=12849) | 0.7.x |

## Installing Dependencies

First you must install the necessary dependencies on your system. You can run this script to install the necessary dependencies for compiling the mods (Scripts are made assuming you are running **Ubuntu 20.04**).

```
wget https://raw.githubusercontent.com/teeframe/mods-repository/main/resources/default-dependencies.sh  -O - | sh
```

## Compiling Mods (Teeworlds 0.6.x)

Now you just need to execute the compile script for your desired mod:

```
wget https://raw.githubusercontent.com/teeframe/mods-repository/main/0.6.x/MOD_FOLDER_NAME/compile.sh  -O - | sh
```

## Compiling Mods (Teeworlds 0.7.x)

Now you just need to execute the compile script for your desired mod:

```
wget https://raw.githubusercontent.com/teeframe/mods-repository/main/0.7.x/MOD_FOLDER_NAME/compile.sh  -O - | sh
```

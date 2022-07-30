# Elementary OS compile script
<img src=https://github.com/HackZy01/Images/blob/main/eOS_6.1.png  width="250" height="251"> <picture>
<img src="https://github.com/HackZy01/Images/blob/main/desktop-dark.png" width="420" height="240">
 </picture>


This is .sh script that will compile Elementary OS iso of your choice, don't need to worry about anything it just installs everything it needs by itself and gives you a user friendly menu

<picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/HackZy01/Images/blob/main/eos-compile-screenshot-dark.png" width="415" height="290">
    <source media="(prefers-color-scheme: light)" srcset="https://github.com/HackZy01/Images/blob/main/eos-compile-screenshot-light.png" width="347" height="222">
    <img src="https://github.com/HackZy01/Images/blob/main/eos-compile-screenshot.png" width="542" height="410">
  </picture>

This script doesnt't work on Fedora! It might not function properly on arch as it's a very outdated versiom

# Note
as of 30.07.2022 Elementary OS 7 Horus isn't finished/recommended for daily usage yet

# Tested on:
- Debian based distros: Elementary OS Zorin OS 15 and Linux Mint

# Update info
- I would love to do an arch based version, but I'm afraid it's not possible, many tries just errored out

# Running
to run this sript do (terminal in the same directory as script):

```
sudo chmod +x compile_elementary_debian.sh

./compile_elementary_debian.sh
```


# ISO
.ISO will take around 2.5gb, be aware that it will take more in process of building.

iso should be located in directory like this:

/os/builds/[architecture name]/elementaryos-[version].[date].iso
    
# Dependiencies

- Docker and Docker.io
- Git
- Flatpak (for Raspberry Pi and Pinebook Pro building)

don't worry they will be installed automatically

<p align="center"> 
Elementary OS compile script
</p>

<p align="center"> 
<img align="center" src="https://img.shields.io/badge/Current%20ElementaryOS%20Stable%20Version-6.1-blue?style=style=flat"> 
<img align="center" src="https://img.shields.io/badge/Script%20Version%20-1.05-blue?style=style=flat"> 
<img align="center" src="https://img.shields.io/badge/Script%20Test%20Version%20-X-orange?style=style=flat">
</p>

<p align="center"> 
<img src=https://github.com/HackZy01/Images/blob/main/eOS_6.1.png  width="250" height="251"> <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://github.com/HackZy01/Images/blob/main/desktop-dark.png" width="420" height="240">
   <source media="(prefers-color-scheme: light)" srcset="https://github.com/HackZy01/Images/blob/main/desktop-light.png" width="420" height="240">
   <img src="https://github.com/HackZy01/Images/blob/main/desktop-dark.png" width="420" height="240">
 </picture
</p>

This is .sh script that will compile Elementary OS iso of your choice, don't need to worry about anything it just installs everything it needs by itself and gives you a user friendly menu

<p align="center"> 
<picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/HackZy01/Images/blob/main/eos-compile-screenshot-dark.png" width="415" height="290">
    <source media="(prefers-color-scheme: light)" srcset="https://github.com/HackZy01/Images/blob/main/eos-compile-screenshot-light.png" width="347" height="222">
    <img src="https://github.com/HackZy01/Images/blob/main/eos-compile-screenshot.png" width="542" height="410">
  </picture>
</p>

This script doesnt't work on Fedora! It might not function properly on arch as it's a very outdated versiom

# Note
as of 11.07.2022 Elementary OS 7 Horus isn't recommended for daily usage yet

# Tested on:
- Debian based distros: Elementary OS Zorin OS 15 and Linux Mint

# Update info
- I would love to do an arch based version, but I'm afraid it's not possible, many tries just errored out

# Running
to run this sript do (terminal in the same directory as script):

```
sudo chmod +x compile_elementary.sh

./compile_elementary.sh
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

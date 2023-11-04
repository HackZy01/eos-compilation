<p align="center"> 
<img align="center" src="https://img.shields.io/badge/Current%20ElementaryOS%20Stable%20Version-6.1-blue?style=style=flat"> 
<img align="center" src="https://img.shields.io/badge/Script%20Version%20-1.05-blue?style=style=flat"> 
<img align="center" src="https://img.shields.io/badge/Script%20Test%20Version%20-None-red?style=style=flat">
</p>

<p align="center"> 
<img src=https://elementary.io/images/icons/places/128/distributor-logo.svg  width="250" height="251"> <picture>
   <img src="https://elementary.io/images/screenshots/desktop.jpg" width="420" height="240">
 </picture
</p>

Purpose of this shell script is to compile Elementary OS ISO of your choice, in a pretty user friendly way

<p align="center"> 
<picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/HackZy01/Images/blob/main/eos-compile-screenshot-dark.png" width="415" height="290">
    <source media="(prefers-color-scheme: light)" srcset="https://github.com/HackZy01/Images/blob/main/eos-compile-screenshot-light.png" width="347" height="222">
    <img src="https://github.com/HackZy01/Images/blob/main/eos-compile-screenshot.png" width="542" height="410">
  </picture>
</p>

The only supported version of this script currently is made for Debian use only

# Note
as of 11.07.2022 Elementary OS 7 Horus isn't recommended for daily usage yet

# Compatibility:
Debian / Ubuntu-based Distros
  
# Usage
To make use of this script run (in the same directory as the script):

```
sudo chmod +x compile_elementary.sh

./compile_elementary.sh
```

# ISO
ISO will take around 2.5gb, be aware that it will take more in process of building.

ISO should be located inside a directory looking like this

```/os/builds/[architecture]/elementaryos-[version].[date].iso```
    
# Dependiencies
### Installed automatically upon running
- Docker and Docker.io
- Git
- Flatpak (for Raspberry Pi and Pinebook Pro building)


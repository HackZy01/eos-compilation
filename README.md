# Elementary OS compile script
<img src=https://github.com/HackZy01/Elementary-OS-compile-script/blob/main/images/eOS_6.1_logo.png  width="200" height="201">  <img src=https://github.com/HackZy01/Elementary-OS-compile-script/blob/main/images/desktop.png  width="420" height="240"> 


This is .sh script that will compile Elementary OS iso of your choice, don't need to worry about anything it just installs everything it needs by itself and gives you a user friendly menu

This script doesnt't work on Fedora! It might not function properly on arch as it's an outdated versiom

# Note
as of 11.07.2022 Elementary OS 7 Horus isn't ready for usage yet

# Distros
Tested on:

- Debian based distros: Elementary OS Zorin OS 15 and Linux Mint

# Running
to run this sript do (terminal in the same directory as script):

```
sudo chmod +x compile_elementary_(distro or it's base).sh

./compile_elementary_(distro or it's base).sh
```


# ISO
.ISO will take around 2.5gb, be aware that it will take more in process of building.

iso should be located in directory like this:

/os/builds/(architecture name)/elementaryos-<version>.<date>.iso
    
# Dependiencies

- Docker and Docker.io
- Git

don't worry they will be installed automatically

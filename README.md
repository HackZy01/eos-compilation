# Elementary-OS-6-compile-script
Elementary OS 6 is in Early Acess so it may contain bugs or crash sometimes. I have daily driven eOS6 and it was fine, but it may differ on your device.

This is .sh script that will compile Elementary OS 6 iso for you
This script works only on Ubuntu and Debian and Arch based distros! 


- Tested on:

Debian based distros: Elementary OS, Zorin OS 15, Linux Mint Debian Edition,
Arch based distros: EndeavourOS

to run this sript do (terminal in the same directory as script):

```sudo chmod +x compile_elementary_(distro or it's base).sh

./compile_elementary_(distro or it's base).sh
```


# iso
Elementary OS 6 iso will take somewhere beetwen 2.5gb, be aware that it will take more in process of building.

iso should be located in directory like this:

/os/builds/(architecture name)/elementaryos-6.0-daily.(date).iso
    
# dependiencies

- Docker and Docker.io
- Git

don't worry they will be installed while running script.

![Elementary OS Logo](https://github.com/HackZy01/Elementary-OS-6-compile-script/blob/main/images/elementary_logo.png)

*macOS version isn't actively worked on so it may not work*

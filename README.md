# Elementary OS 6.1 compile-script
![Elementary OS 6 Logo](https://github.com/HackZy01/Elementary-OS-compile-script/blob/main/images/eOS-6-Logo.png)

This is .sh script that will compile Elementary OS 6.1 iso for you
This script works only on Ubuntu and Debian and Arch based distros! 


- Tested on:

Debian based distros: Elementary OS, Zorin OS 15, Linux Mint Debian Edition,
Arch based distros: EndeavourOS

to run this sript do (terminal in the same directory as script):

```
sudo chmod +x compile_elementary_(distro or it's base).sh

./compile_elementary_(distro or it's base).sh
```


# iso
Elementary OS 6 iso will take somewhere beetwen 2.5gb, be aware that it will take more in process of building.

iso should be located in directory like this:

/os/builds/(architecture name)/elementaryos-<version>.<date>.iso
    
# dependiencies

- Docker and Docker.io
- Git

don't worry they will be installed while running script.

*macOS version isn't actively worked on so it may not work*

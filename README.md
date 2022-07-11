# Elementary OS compile script
![Elementary OS 6 Logo](https://github.com/HackZy01/Elementary-OS-compile-script/blob/main/images/eOS_6.1_logo.png)

This is .sh script that will compile Elementary OS iso of your choice
This script doesnt't work on Fedora! 


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

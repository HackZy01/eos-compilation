#!/bin/bash

clear

#let's install software-properties-common just to be sure
sudo apt install software-properties-common -y

#just to be sure fresh installed systems can use git
sudo apt install git -y

#let's install docker and docker.io
sudo apt install docker docker.io -y

#update
sudo apt update -y && sudo apt upgrade -y

#idk just it
sudo apt --fix-broken install -y

#git clone the eos git
git clone https://github.com/elementary/os.git

#go to it's directory
cd os

clear

#Version selection menu
versionselect() {
    echo -ne "
Select the version you want to build

Daily builds:
1) Daily 5.1 Hera
2) Daily 6.1 Jólnir
3) Daily 7.0 Horus

Stable builds:
4) Stable 6.1 Jólnir

Choose an option:  "
echo -e "\e[1;32mPress 5 to cancel\e[0m"
#echo -e "\e[32mPress 5 to cancel\e[0m"
    read -r ans
    case $ans in
    1)
        sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform-daily-5.1-azure.conf < build.sh
        ;;
    2)
        sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform-daily-6.1-azure.conf < build.sh
        ;;
    3)
        sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform-daily-7.0-azure.conf < build.sh
        ;;
    4)
        sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform-stable-azure.conf < build.sh
        ;;
    5)
        echo "See ya."
        exit 0
        ;;
    *)
        echo "Invalid option. Try again"
        exit 1
        ;;
    esac
}

versionselect

clear
exit


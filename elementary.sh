#!/bin/bash

clear

sudo apt install software-properties-common -y
sudo apt install git -y
sudo apt install docker docker.io -y
sudo apt update -y && sudo apt upgrade -y
sudo apt --fix-broken install -y

git clone https://github.com/elementary/os.git
cd os

clear

#Version selection menu
versionselect() {
    echo -ne "
Select the version you want to build

Daily builds:
1) Daily 5.1 "Hera"
2) Daily 6.1 "Jólnir"
3) Daily 7.1 "Horus"
4) Daily 8.0 "Noble"

Stable builds:
5) Stable 8.0 "Noble"

Build for other platforms
6) Rasperry Pi 4
7) Pinebook Pro

Choose an option:  "
echo -e "\e[1;32mPress 0 to cancel\e[0m"
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
    /bin/bash -s etc/terraform-daily-7.1-azure.conf < build.sh
        ;;
    4)
        sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform-daily-8.0-azure.conf < build.sh
        ;;
    5)
        sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform.conf < build.sh
        ;;
    6)
        sudo apt install flatpak gnome-software-plugin-flatpak
        sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:unstable \
    ./build-rpi.sh
        ;;
    7)
        sudo apt install flatpak gnome-software-plugin-flatpak
        sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:unstable \
    ./build-pinebookpro.sh
        ;;
    0)
        echo "Goodbye."
        exit 0
        ;;
    *)
        echo "Invalid choice."
        exit 1
        ;;
    esac
}

versionselect

clear
exit


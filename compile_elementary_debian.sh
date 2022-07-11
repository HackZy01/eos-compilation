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

#BETA selection menu
echo "select the eOS version you want to build”
echo "  1) Daily 5.1"
echo "  2) Daily 6.1"
echo "  3) Daily 7.0"
echo "  4) Stable 6.1" 
read n
case $n in
  1) sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform-daily-5.1-azure.conf < build.sh;;
  2) sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform-daily-6.1-azure.conf < build.sh;;
  3) sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform-daily-7.0-azure.conf < build.sh;;
  4) sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform-stable-azure.conf < build.sh;;
  *) echo "invalid option";;
esac

clear
echo "done, terminal is now yours"

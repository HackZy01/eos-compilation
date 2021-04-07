#!/bin/bash

clear

#let's install software-properties-common just to be sure
sudo apt install software-properties-common

#just to be sure fresh installed systems can use git
sudo apt install git

#let's install docker and docker.io
sudo apt install docker docker.io

#update
sudo apt update && sudo apt upgrade

#idk just it
sudo apt --fix-broken install

#git clone the eos git
git clone https://github.com/elementary/os.git

#go to it's directory
cd os

#now let's compile this iso
sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform-daily-6.0-azure.conf < build.sh

echo done, terminal is now yours

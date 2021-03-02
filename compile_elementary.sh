#!/bin/bash

clear

#let's install software-properties-common just to be sure
sudo apt install software-properties-common

#just to be sure fresh installed systems can use git
sudo apt install git

#git clone the eos git
git clone https://github.com/elementary/os.git && cd os

#update
sudo apt update && sudo apt upgrade

#let's install docker and docker.io
sudo apt install docker docker.io

#now let's compile this iso
sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform-daily-6.0-azure.conf < build.sh

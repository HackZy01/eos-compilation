#git clone the eos git
git clone https://github.com/elementary/os.git && cd os

#let's check if you have docker
if ! [ -x "$(command -v docker)" ]; then
  echo 'docker not found, installing it.' >&2
  sudo apt install docker 
  
#let's check if you have docker.io
if ! [ -x "$(command -v docker)" ]; then
  echo 'docker not found, installing it.' >&2
  sudo apt install docker.io

#now let's compile this iso
sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform-daily-6.0-azure.conf < build.sh

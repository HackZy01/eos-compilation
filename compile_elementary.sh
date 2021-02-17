#git clone the eos git
git clone https://github.com/elementary/os.git && cd os


#let's install docker and docker.io
sudo apt-get install docker docker.io

#now let's compile this iso
sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform-daily-6.0-azure.conf < build.sh

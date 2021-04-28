echo hello

# let’s prepare dependencies 
## Git
if [[ $ (which git == "" ]];
then
   echo "git wasn’t found, installing it"
   sudo pacman -S git

## Docker
if [[ $ (which docker == "" ]];
then
   echo "docker wasn’t found, installing it"
   sudo pacman -S docker
   sudo pacman -S docker.io

echo dependencies are installed, preparing next step

# let me just git clone code from elementary os GitHub 
git clone https://github.com/elementary/os.git

# starting docker
sudo systemctl start docker

# compiling process
echo starting compile process

sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s os/etc/terraform-daily-6.0-azure.conf < os/build.sh

echo “Now you can search for your iso, it may be in directory like this if you git cloned it:
Elementary-OS-compile-script/os/builds/(architecture name)/elementaryos-6.0-daily.(date).iso”

echo everything done, terminal is yours
clear

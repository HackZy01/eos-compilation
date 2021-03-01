#!/bin/bash
echo "warning this is macOS version of install script that wasn't tested by me, it is in test state"

# checking if docker is installed:
# coming soon... ¯\_(ツ)_/¯

echo "just a reminder install docker from docker.dmg (click on it and run docker.app) before running this"

# just a git clone
git clone https://github.com/elementary/os && cd os

# now let's compile this iso,
echo "if there are any errors, I am sorry beacuse I don't own macOS machine, please add any errors to my github issues elementary-os-6-compile-script issue page"

sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform-daily-6.0-azure.conf < build.sh

#!/usr/bin/env bash

# This script assumes it's running in a container as root
# and that /out is mounted to a directory on the local
# filesystem

START_TS=`date`

dnf update
dnf install -y git vim fedora-packager fedora-review
cd ~
git clone https://github.com/tachoknight/swift-lang-packaging-fedora.git
cd swift-lang-packaging-fedora
./justbuild.sh


echo Started:_____$START_TS
echo Ended:_______`date`
#!/usr/bin/env bash

# This script assumes it's running in a container as root
# and that /out is mounted to a directory on the local
# filesystem

START_TS=`date`

OUTDIR=/out
if [[ ! -d "$OUTDIR" ]]
then
    echo "$OUTDIR does not exist, so no place to copy the artifacts!"
    exit 1
fi

dnf -y update
dnf install -y vim fedora-packager fedora-review
cd ~
git clone https://github.com/tachoknight/swift-lang-packaging-fedora.git
cd swift-lang-packaging-fedora
./justbuild.sh

cp ~/rpmbuild/SRPMS/* $OUTDIR
cp ~/rpmbuild/RPMS/x86_64/* $OUTDIR


echo Started:_____$START_TS
echo Ended:_______`date`
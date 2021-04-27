#!/usr/bin/env bash

dnf install -y git
cd ~
git clone https://github.com/tachoknight/buildbot-swift.git
cd buildbot-swift/build
chmod +x buildbot-swift-fedora.sh
./buildbot-swift-fedora.sh

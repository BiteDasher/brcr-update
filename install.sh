#!/bin/bash
[[ $(id -u) -eq 0 ]] || { echo "This script must be run as root"; exit 1; }
export PATH="${PATH/\/usr\/local\/bin:/}"
cd /usr/local
rm -rf "__brcr"
mkdir __brcr
cd __brcr
curl -L -o brcr-update https://raw.githubusercontent.com/BiteDasher/brcr-update/master/brcr-update
curl -L -o unzip https://raw.githubusercontent.com/BiteDasher/brcr-update/master/unzip
install -m 755 brcr-update /usr/bin/brcr-update
install -m 755 unzip /usr/bin/unzip
cd /
rm -rf /usr/local/__brcr
echo "Done."

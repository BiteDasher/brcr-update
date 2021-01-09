#!/bin/bash
[[ $(id -u) -eq 0 ]] || { echo "This script must be run as root"; exit 1; }
export PATH="${PATH/\/usr\/local\/bin:/}"
cd /usr/local
rm -rf "__brcr"
git clone "https://github.com/BiteDasher/brcr-update.git" "__brcr"
[ -d /usr/local/bin ] || mkdir -p /usr/bin
cd __brcr
install -m 755 brcr-update /usr/bin/brcr-update
install -m 755 unzip /usr/bin/unzip
cd /
rm -rf /usr/local/__brcr
echo "Done."

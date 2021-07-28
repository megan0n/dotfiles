#!/bin/bash

#emacs27
git clone --depth 1 --branch emacs-27 https://git.savannah.gnu.org/git/emacs.git
sudo apt install build-essential git
sudo apt build-dep emacs25

cd emacs
./autogen.sh
./configure
make bootstrap
sudo make install
cd

#git 2.23
sudo apt-get install devscripts dpkg-dev build-essential
sudo apt-get build-dep git
echo "deb http://deb.debian.org/debian buster-backports main" > /etc/apt/sources.list
sudo apt-get update
sudo apt-get -t buster-backports install git

#doom
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

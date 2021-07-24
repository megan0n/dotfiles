#!/bin/bash

git clone --depth 1 --branch emacs-27 https://git.savannah.gnu.org/git/emacs.git
sudo apt install build-essential git
sudo apt build-dep emacs25

cd emacs
    ./autogen.sh
    ./configure
    make bootstrap
    sudo make install

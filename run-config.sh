#!/bin/bash

#Virtualbox
#Applications
sudo apt-get update
sudo apt-get install -y i3 vim feh mpv terminator spacefm ssh sshfs git \
	python3 python3-pip rsync curl qbittorent \
	dia gnumeric

#list dependencies to file
tar xzf package.tar.gz
python setup.py instaell --record file.txt
xarfs rm -rf < file.txt

#!/bin/bash

lspci -nn | grep Network

sudo apt-get install wireless-tools
sudo apt-get install network-manager-gnome
sudo apt-get install wpasupplicant

sudo nano /etc/apt/sources.list
#(main contrib non-free)

sudo apt-get update

sudo apt-get dist-upgrade

#reboot the computer

sudo apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms

sudo modprobe -r b44 b43 b43legacy ssb brcmsmac bcma

sudo modprobe wl

#for frequent disconnections
iwconfig wlan0 power off

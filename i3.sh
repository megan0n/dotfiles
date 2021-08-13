#!/bin/bash

sudo apt-get install i3

#access gnome-control-center from i3
sudo chmod +x settings 
sudo cp settings /usr/local/bin

#in /.config/i3/config
default_border pixel 0
default_floating_border pixel 0

exec_always --no-startup-id ~/.screenlayout/*.sh
bindsym $mod+p flameshot gui -p ~/Pictures
exec blueman-applet


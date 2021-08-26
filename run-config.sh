#!/bin/bash

#Virtualbox
#Applications
sudo apt-get update
sudo apt-get install -y i3 vim feh mpv terminator spacefm ssh sshfs git python3 python3-pip rsync curl qbittorrent dia gnumeric flameshot pavucontrol

#list dependencies to file
tar xzf package.tar.gz
python setup.py install --record list.txt
xargs rm -rf < list.txt

#i3-gtk compatibility issue
exec --no-startup-id /usr/lib/gsd-xsettings

#gtk adwaita-dark
sudo apt-get install lxappearance gtk-chtheme qt4-qtconfig
#papirus icon-theme
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.icons" sh

#flameshot-i3 keybinding
echo "bindsym $mod+p flameshot gui -p ~/Pictures" >> ~/.config/i3/config

#xbindkeys
sudo apt-get install xdotool xbindkeys
xbindkeys --defaults-guide > ~/.xbindkeysrc.scm

#qbit
wget -i plugins -P ~/.local/share/data/qBittorrent/nova3/engines

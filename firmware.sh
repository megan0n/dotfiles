#!/bin/bash

dmesg | grep -i firm
dmesg | grep -i fail

sudo gedit /etc/nsswitch.conf
  hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4 --> hosts: files dns

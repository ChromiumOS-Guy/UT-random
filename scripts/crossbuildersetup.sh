#!/bin/bash

rm -rf "$HOME"/zfs/lxd.img

sudo zpool destroy -f lxd
sudo systemctl stop lxd
sudo rm -rf /var/lib/lxd

sudo systemctl stop lxd.socket
sudo systemctl start lxd.socket

crossbuilder setup-lxd

# sudo lsof | grep lomiri-system-settings-24-04-amd64-arm64
# sudo kill -9 (presistant process)

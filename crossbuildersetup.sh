#!/bin/bash

rm -rf "$HOME"/zfs/lxd.img

sudo zpool destroy lxd
sudo systemctl stop lxd
sudo rm -rf /var/lib/lxd

sudo systemctl stop lxd.socket
sudo systemctl start lxd.socket

crossbuilder setup-lxd



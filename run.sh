#!/bin/sh

read -p "enter HostName: " -r HOST
sudo nixos-rebuild switch --flake .#${HOST}

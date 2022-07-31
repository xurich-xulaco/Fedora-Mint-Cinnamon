#!/bin/env bash
##### CHECK FOR SUDO or ROOT ##################################
if ! [ $(id -u) = 0 ]; then
  echo "This script must be run as sudo or root, try again..."
  exit 1
fi

dnf install fedora-workstation-repositories

dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
  
dnf install https://github.com/rpmsphere/noarch/raw/master/r/rpmsphere-release-36-1.noarch.rpm #this need to be automatized for fedore 37 and newer

dnf install gufw
  
#Just for the sake of having as much convinience as posible within the first boot

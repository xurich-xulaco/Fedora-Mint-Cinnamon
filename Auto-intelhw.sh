#!/bin/env bash
##### CHECK FOR SUDO or ROOT ##################################
if ! [ $(id -u) = 0 ]; then
  echo "This script must be run as sudo or root, try again..."
  exit 1
fi

dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin #Multimedia is was already installed, upgrading...
dnf install libva-intel-hybrid-driver \ #This just depends upon your hardware, maybe this script will be more frindly in the future
  libva \
  libva-utils \
  gstreamer1-vaapi \
  ffmpeg \
  intel-gpu-tools \
  mesa-dri-drivers \
  mpv

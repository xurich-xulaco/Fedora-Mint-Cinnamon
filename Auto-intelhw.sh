#!/bin/env bash
##### CHECK FOR SUDO or ROOT ##################################
if ! [ $(id -u) = 0 ]; then
  echo "This script must be run as sudo or root, try again..."
  exit 1
fi

dnf groupinstall multimedia
dnf install libva-intel-hybrid-driver \ #This just depends upon your hardware, maybe this script will be more frindly in the future
  libva \
  libva-utils \
  gstreamer1-vaapi \
  ffmpeg \
  intel-gpu-tools \
  mesa-dri-drivers mpv

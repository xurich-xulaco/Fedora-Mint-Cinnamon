#!/bin/env bash
##### CHECK FOR SUDO or ROOT ##################################
if ! [ $(id -u) = 0 ]; then
  echo "This script must be run as sudo or root, try again..."
  exit 1
fi

# Install KDE Packages
dnf install \
  @"base-x" \
  @"Common NetworkManager Submodules" \
  @"Fonts" \
  @"Hardware Support" \
  blueman \
  mint-themes-gtk3 \
  mint-x-icons \
  mint-y-icons \
  cagibi \
  colord-gtk \
  cups-pk-helper \
  nemo \
  nemo-extensions \
  nemo-search-helpers \
  nemo-fileroller \
  nemo-image-converter \
  nemo-preview \
  glibc-all-langpacks \
  gnome-keyring-pam \
  #kcm_systemd \
  gnome-disk-utility \
  mintlocale \
  mintlocale-set-default-locale \
  network-manager-applet \
  system-config-printer \
  simple-scan \
  slick-greeter \
  slick-greeter-cinnamon \
  pipewire-pulseaudio \
  #kde-settings-pulseaudio \
  #kde-style-breeze \
  #kdegraphics-thumbnailers \
  #kdeplasma-addons \
  fcitx5-gtk3 \
  fcitx5-mozc \
  gnome-online-accounts \
  #kdialog \
  #kdnssd \
  #kf5-baloo-file \
  cinnamon-control-center \
  cinnamon-control-center-filesystem \
  dnfdragora-updater \
  #kf5-kipi-plugins \
  #khotkeys \
  #kmenuedit \
  cinnamon-menus \
  cinnamon-screensaver \
  cinnamon-session \
  cinnamon-settings-daemon \
  cinnamon-translations \
  desktop-backgrounds-basic \
  #kscreen \
  #kscreenlocker \
  gnome-screenshot \
  #ksshaskpass \
  gnome-system-monitor \
  #kwebkitpart \
  muffin \
  redshift-gtk \
  NetworkManager-config-connectivity-fedora \
  #phonon-qt5-backend-gstreamer \
  #pinentry-qt \
  #plasma-breeze \
  cinnamon-desktop \
  metacity \
  gnome-shell \
  #plasma-desktop-doc \
  #plasma-drkonqi \
  #plasma-nm \
  #plasma-nm-l2tp \
  #plasma-nm-openconnect \
  #plasma-nm-openswan \
  #plasma-nm-openvpn \
  #plasma-nm-pptp \
  #plasma-nm-vpnc \
  #plasma-pa \
  #plasma-user-manager \
  #plasma-workspace \
  #plasma-workspace-geolocation \
  caribou-gtk3-module \
  polkit-gnome \
  gnome-terminal \
  #qt5-qtbase-gui \
  #qt5-qtdeclarative \
  lightdm-gtk \
  lightdm-settings \
  lightdm-gtk-greeter-settings \
  setroubleshoot \
  #sni-qt \
  qbittorrent \
  libreoffice \
  libreoffice-gtk3 \ #extra libreoffice
  @"Printing Support" \
  @"Input Methods" \
  @Multimedia \
  thunderbird \
  firefox \
  neofetch \
  firewall-config \
  kvantum \
  qt5ct \
  dnf-plugins-core \
  xreader \
  xed \
  eom \
  xorg-x11-drv-libinput

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
  cinnamon-themes \
  mint-x-icons \
  mint-y-icons \
  cagibi \
  colord-gtk \
  cups-pk-helper \
  nemo \
  nemo-extensions \
  glibc-all-langpacks \
  gnome-keyring-pam \
  #kcm_systemd \
  gnome-disk-utility \
  mintlocale \
  mintlocale-set-default-locale \
  network-manager-applet \
  #kde-print-manager \
  #kde-settings-pulseaudio \
  #kde-style-breeze \
  #kdegraphics-thumbnailers \
  #kdeplasma-addons \
  #kdialog \
  #kdnssd \
  #kf5-baloo-file \
  #kf5-kipi-plugins \
  #khotkeys \
  #kmenuedit \
  cinnamon-menus \
  cinnamon-screensaver \
  cinnamon-session \
  cinnamon-settings-daemon \
  cinnamon-translations \
  #kscreen \
  #kscreenlocker \
  #ksshaskpass \
  #ksysguard \
  #kwebkitpart \
  muffin \
  NetworkManager-config-connectivity-fedora \
  #phonon-qt5-backend-gstreamer \
  #pinentry-qt \
  #plasma-breeze \
  cinnamon-desktop \
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
  #polkit-kde \
  #qt5-qtbase-gui \
  #qt5-qtdeclarative \
  lightdm-gtk \
  lightdm-gtk-greeter-settings \
  setroubleshoot \
  #sni-qt \
  qbittorrent \
  libreoffice \
  @"Printing Support" \
  @"Input Methods" \
  @Multimedia \
  thunderbird \
  firefox \
  neofetch \
  firewall-config \
  kvantum \
  dnf-plugins-core \
  xorg-x11-drv-libinput

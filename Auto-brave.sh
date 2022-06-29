#!/bin/env bash
##### CHECK FOR SUDO or ROOT ##################################
if ! [ $(id -u) = 0 ]; then
  echo "This script must be run as sudo or root, try again..."
  exit 1
fi

dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/

rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

dnf install brave-browser

#Maybe a temporal solution, until I figure out how to share precompiled copr stuff, or someone shares and mantains ungoogled chromium for fedora
#Of course, I hope it is compiled with hardware acceleration and someother not so libre blobs, for the sake of being a chrome replacement in all ways
#I mean, at least is not vanilla Chrome

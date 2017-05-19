#!/usr/bin/env bash

# Install all packages needed to use deezer
[[ -z $(which xdotool) ]] && sudo apt-get --yes --force-yes install xdotool
[[ -z $(which screen) ]] && sudo apt-get --yes --force-yes install screen
[[ -z $(which lxterminal) ]] && sudo apt-get --yes --force-yes install lxterminal
[[ -z $(which chromium-browser) ]] && sudo apt-get --yes --force-yes install chromium-browser
[[ -z $(which chromium) ]] && sudo apt-get --yes --force-yes install chromium
sudo apt-get --yes --force-yes install libcanberra-gtk*

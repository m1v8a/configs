#!/bin/bash

# update the system
sudo pacman --noconfirm -Syu

source ./installs/chromium
source ./installs/code
source ./installs/font
source ./installs/gimp
source ./installs/git
source ./installs/nodejs
source ./installs/utils
source ./installs/waybar
source ./installs/wofi
source ./installs/yay
source ./installs/zen-browser

# Update the configs with my configs
#cp -r ./config/hypr ~/.config
#cp -r ./config/waybar ~/.config
#cp -r ./config/wofi ~/.config
#cp -r ./config/kitty ~/.config
#cp -r ./config/scripts ~/.config

#cp -r ./wallpapers ~/Pictures

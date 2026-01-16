#!/bin/bash

# update the system
sudo pacman --noconfirm -Syu

sudo pacman -S --noconfirm --needed git base-devel

sudo pacman --noconfirm -S waybar wofi kitty chromium code gimp
sudo pacman --noconfirm -S ttf-firacode-nerd brightnessctl swaybg xdg-user-dirs
yay -S --noconfirm zen-browser-bin

fc-cache -fv
sudo usermod -aG video $USER
xdg-user-dirs-update

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

# Update the configs with my configs
cp -r ./hypr ~/.config
cp -r ./waybar ~/.config
cp -r ./wofi ~/.config
cp -r ./kitty ~/.config
cp -r ./scripts ~/.config
cp -r ./wallpapers ~/Pictures

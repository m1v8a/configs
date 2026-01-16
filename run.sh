#!/bin/bash

# update the system
sudo pacman --noconfirm -Syu

sudo pacman -S --noconfirm --needed git base-devel

# WOFI, KITTY, CHROME, VSCODE, GIMP, NVIM
sudo pacman --noconfirm -S --needed waybar wofi kitty chromium code gimp neovim
# TTF-FIRACODE, BRIGHTNESSCTL, SWAYBG, XDG-USER-DIRS
sudo pacman --noconfirm -S --needed ttf-firacode-nerd brightnessctl swaybg xdg-user-dirs

# ZEN BROWSER
yay -S --noconfirm zen-browser-bin

# FONTS fc-cache -fv
sudo usermod -aG video $USER
xdg-user-dirs-update

# YAY
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

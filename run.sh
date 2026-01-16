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

#NODEJS
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install 24

# FOR NVIM TREESITTER
npm install -g tree-sitter-cli

# Update the configs with my configs
cp -r ./hypr ~/.config
cp -r ./waybar ~/.config
cp -r ./wofi ~/.config
cp -r ./kitty ~/.config
cp -r ./scripts ~/.config
cp -r ./wallpapers ~/Pictures

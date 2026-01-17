#!/bin/bash

if [[ $1 == "repo" ]]; then
	# update the repo
	cp -r ~/.config/scripts/ ./config
	cp -r ~/.config/wofi/ ./config
	cp -r ~/.config/waybar/ ./config
	cp -r ~/.config/hypr/ ./config
	cp -r ~/.config/kitty/ ./config
	cp -r ~/.config/nvim/ ./config

	cp -r ~/Pictures/wallpapers ./

elif [[ $1 == "config" ]]; then
	nil
	# update the config
	cp -r ./config/scripts/ ~/.config
	cp -r ./config/wofi/ ~/.config
	cp -r ./config/waybar/ ~/.config/
	cp -r ./config/nvim/ ~/.config/
	cp -r ./config/kitty/ ~/.config/

       # update the wallpapers
	cp -r ./wallpapers ~/Pictures
fi



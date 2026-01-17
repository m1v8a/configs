#!/bin/bash

if [[ $1 == "repo" ]]; then
	# update the repo
	cp -r ~/.config/scripts/ ./
	cp -r ~/.config/wofi/ ./
	cp -r ~/.config/waybar/ ./
	cp -r ~/.config/hypr/ ./
	cp -r ~/.config/nvim/ ./

	cp -r ~/Pictures/wallpapers ./

elif [[ $1 == "config" ]]; then
	nil
	# update the config
	cp -r ./config/scripts/ ~/.config
	cp -r ./config/wofi/ ~/.config
	cp -r ./config/waybar/ ~/.config/
	cp -r ./config/nvim/ ~/.config/

       # update the wallpapers
	cp -r ./wallpapers ~/Pictures
fi



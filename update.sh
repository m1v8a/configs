#!/bin/bash



getopts "r:c" flag >/dev/null 2>&1

if [[ $flag == "?" ]]; then
	echo "invalid flag"
elif [[ $flag == "r" ]]; then

	# update the repo
	cp -r ~/.config/scripts/ ./
	cp -r ~/.config/wofi/ ./
	cp -r ~/.config/waybar/ ./
	cp -r ~/.config/hypr/ ./

	cp -r ~/Pictures/wallpapers ./

elif [[ $flag == "c" ]]; then

	# update the config
	cp -r ./config/scripts/ ~/.config
	cp -r ./config/wofi/ ~/.config
	cp -r ./config/waybar/ ~/.config/
	cp -r ./config/hypr/ ~/.config/

	# update the wallpapers
	cp -r ./wallpapers ~/Pictures
fi


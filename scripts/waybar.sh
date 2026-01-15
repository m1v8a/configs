#!/bin/bash

if pgrep waybar > /dev/null; then
	pkill -x waybar
fi

sleep 0.2

waybar -c "$HOME/.config/waybar/waybar.jsonc" -s "$HOME/.config/waybar/style.css" >/dev/null 2>&1 &

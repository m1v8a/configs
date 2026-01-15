#!/bin/bash


if pgrep wofi > /dev/null; then
	pkill -x wofi
fi

sleep 0.2

wofi --show drun --conf ~/.config/wofi/drun.conf --style ~/.config/wofi/drun.css --p "search"

#!/usr/bin/env bash

wallpaper_path=$HOME/wallpapers
wallpaper_name="$(ls $wallpaper_path | rofi -dmenu || pkill rofi)"

if [[ -f $wallpaper_path/$wallpaper_name ]]; then
    ln -sf "$wallpaper_path/$wallpaper_name" "$wallpaper_path/wallpaper"
    wall-change "$wallpaper_path/wallpaper"
else
    exit 1
fi

# Call spicetify script
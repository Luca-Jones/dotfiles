#!/usr/bin/env bash

echo "Installing packages from packages.txt ..."
pacman -S --needed - < packages.txt

# wallpapers
mkdir -p ~/Pictures/wallpapers

# fonts
mkdir -p '~/.local/share/fonts'
cp -r ./fonts ~/.local/share/fonts
fc-cache

# install git repositories

# AUR packages

# next steps
stow --adopt .
git --reset hard

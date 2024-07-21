#!/usr/bin/env bash

pacman_packages=("gnome" "xorg" "i3" "neofetch" "curl" "zsh" "code" "fzf" "gedit" "vim" "polybar" "rofi" "bashtop" "cmatrix" "mpv")
yay_packages=("feh" "picom" "cava" "spotify")

# update packages
sudo pacman -Syu --noconfirm

# move fonts
sudo cp -r ~/dotfiles/0xProto /usr/share/fonts/

# install all pacman packages
sudo pacman -S ${pacman_packages[@]} --noconfirm

# install yay
git clone https://aur.archlinux.org/yay.git
cd ./yay
makepkg -si
cd ..
rm -rf yay

# install yay packages
yay -S ${yay_packages[@]} --noconfirm

cd ~

# git packages
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git 
git clone "https://github.com/pystardust/ani-cli.git"
sudo cp ani-cli/ani-cli /usr/local/bin
rm -rf ani-cli

config_files=("alacritty" "i3" "picom" "polybar" "rofi")

# move fonts
sudo cp -r ~/dotfiles/0xProto /usr/share/fonts/

# move config files
cd ~
for config in ${config_files[@]}
do
    echo $config
    sudo cp -r ~/dotfiles/$config ~/.config
done

cp ~/dotfiles/zshrc ~/.zshrc
cp ~/dotfiles/p10k.zsh ~/.p10k.zsh

#oh-my-zsh extensions

mkdir ~/Pictures/wallpapers
cp ~/dotfiles/waterfront.jpg ~/Pictures/wallpapers/

# set zsh as default shell
chsh -s $(which zsh)

# start display manager service
systemctl enable gdm.service
systemctl start gdm.service

echo "please reboot your computer with 'sudo reboot now'"
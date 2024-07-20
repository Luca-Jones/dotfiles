#!/usr/bin/env bash

pacman_packages=("gnome" "xorg" "i3" "neofetch" "curl" "zsh" "code" "fzf" "gedit" "vim" "polybar" "rofi" "bashtop" "cmatrix" "mpv")
yay_packages=("feh" "picom" "cava" "spotify")
config_files=("alacritty" "i3" "picom" "polybar" "rofi")

# update packages
sudo pacman -Syu --noconfirm

# move config files
cd ~
mkdir ~/.config/${config_files[@]}
cp -r ~/dotfiles/${config_files[@]} ~/.config/
cp -r ~/dotfiles/.oh-my-zsh ~/
cp ~/dotfiles/.zshrc ~/
cp !/dotfiles/.p10k.zsh ~/

# move fonts
cp -r ~/dotfiles/0xProto /usr/share/fonts/

# install all pacman packages
sudo pacman -S ${pacman_packages[@]} --noconfirm

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

# install yay packages
yay -S ${yay_packages[@]} --noconfirm

# git packages
# h -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git 
git clone "https://github.com/pystardust/ani-cli.git"
sudo cp ani-cli/ani-cli /usr/local/bin
rm -rf ani-cli

# set zsh as default shell
chsh -s $(which zsh)

# start display manager service
systemctl enable gdm.service
systemctl start gdm.service

echo "please reboot your computer with 'sudo reboot now'"
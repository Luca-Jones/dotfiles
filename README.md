# Dotfiles

## Requirements

- git
- stow

## Installation

```
git clone https://github.com/Luca-Jones/dotfiles
cd dotfiles
stow --adopt .
git --reset hard
```

### Install yay

```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

## Components
|                           | Software Name                 |   Package Name              |
|:--------------------------|:-----------------------------:|:---------------------------:|
| **Window Manager**        | Hyprland                      | hyprland                    |
| **Bar**                   | Waybar                        | waybar (AUR)                |
| **App Launcher**          | rofi                          | rofi-wayland                |
| **Notifications**         |                               |                             |
| **Terminal Emulator**     | kitty                         | kitty                       |
| **Shell**                 | zsh <br> Oh My Zsh <br> powerlevel10k   | zsh <br> [Oh My Zsh](https://ohmyz.sh/) <br> [powerlevel10k](https://github.com/romkatv/powerlevel10k) | 
| **Text Editor**           | VS Code                       | visual-studio-code-bin (AUR)|
| **Networking**            | Network Manager               | networkmanager              |
| **File Manager**          | Thunar <br> yazi              | thunar <br> yazi            |
| **Fonts**                 | Cascadia Code                 | [Cascadia Code](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CascadiaCode.zip)|
| **GTK + Qt Themes**       |                               |                             |
| **Cursor**                |                               |                             |
| **Icons**                 |  hicolor-icon-theme           | hicolor-icon-theme          |
| **Lockscreen**            |  Hyprlock                     |                             |
| **ImageViewer**           |                               |                             |
| **MediaPlayer**           |                               |                             |
| **Music**                 |  Spotify <br> Spicetify       |  spotify-launcher <br> [spicetify](https://spicetify.app/docs/getting-started) |
| **Screenshot**            |                               |                             |
| **Clipboard**             |                               |                             |
| **Color Picker**          |                               |                             |
| **Browswer**              | Firefox                       | firefox                     |
| **Wallpaper**             | swww <br> pywal 16 colors <br> pywalfox | swww <br> python-pywal16 (AUR) <br> python-pywalfox (AUR)|

## CLI Tools
- tree
- git
- neofetch
- tldr
- unzip
- fzf
- thefuck
- zsh-autosuggestions (git)
- zsh-syntax-highlighting (git)
- nerdfetch (AUR)
- pokemon-colorscripts (AUR)
- cava (AUR)
- pipes.sh (AUR)
- btop
- tty-clock (AUR)
- rofi-calc (git)
  
## Other System Info
- audio: pipewire
- firewall: firewalld
- boot: systemd
- brightness control: brightnessctl

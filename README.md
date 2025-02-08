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
mkpkg -si
```

## Components
|                           | Software Name                 |   Package Name              |
|:--------------------------|:-----------------------------:|:---------------------------:|
| **Window Manager**        | Hyprland                      | hyprland                    |
| **Bar**                   | Waybar                        | waybar (AUR)                |
| **App Launcher**          | rofi                          | rofi-wayland                |
| **Notifications**         |                               |                             |
| **Terminal Emulator**     | kitty                         | kitty                       |
| **Shell**                 |                               |                             | 
| **Text Editor**           | VS Code                       | visual-studio-code-bin (AUR)|
| **Networking**            | Network Manager               | networkmanager              |
| **Resource Monitor**      |                               |                             |
| **File Manager**          |                               |                             |
| **Fonts**                 |                               |                             |
| **Colour Scheme**         |                               |                             |
| **GTK + Qt Themes**       |                               |                             |
| **Cursor**                |                               |                             |
| **Icons**                 |                               |                             |
| **Lockscreen**            |                               |                             |
| **ImageViewer**           |                               |                             |
| **MediaPlayer**           |                               |                             |
| **Music**                 |                               |                             |
| **Screenshot**            |                               |                             |
| **Clipboard**             |                               |                             |
| **Color Picker**          |                               |                             |
| **Browswer**              | Firefox                       | firefox                     |
| **Wallpaper**             | Hyprpaper                     | hyprpaper (AUR)             |

## CLI Tools
- tree
- git
- neofetch
- tldr

## Other System Info
- audio: pipewire
- firewall: firewalld
- boot: systemd
- brightness control: brightnessctl

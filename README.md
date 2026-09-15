# dotfiles

My personal dotfiles for school, managed with [GNU Stow](https://www.gnu.org/software/stow/).
The basic setup is Arch Linux + i3 tiling window manager (xorg).

![rice](rice.png)

## Installation

```bash
for pkg in cava i3 kitty picom polybar rofi zathura; do
    mkdir -p ~/.config/"$pkg"
    stow --adopt -t ~/.config/"$pkg" "$pkg"
done
stow --adopt -t ~ bash
git reset --hard
```

> `--adopt` pulls existing files into the stow directory, then `git reset --hard` restores them to the repo versions, effectively replacing your current configs with these dotfiles.

## Notes

- I'm planning to move away from oh-my-zsh in the future in favor of a leaner Zsh setup.
- picom is throwing some errors I couldn't be bothered to deal with rn.

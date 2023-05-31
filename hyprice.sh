#!/bin/bash

#set pacman parallel download and color
#...
pacman -S git rustup
rustup default stable
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru -S bash-completion
echo "export HISTCONTROL=ignoreboth" >> ~/.bashrc
paru -S hyperland foot mako xdg-desktop-portal-hyprland polkit-kde-agent waybar-hyprland-git swaybg
paru -S terminus-font ttf-jetbrains-mono-nerd
paru -S pavucontrol
paru -S vscodium-bin

#copy dotfiles
#...

#setup gpg smart card
#...
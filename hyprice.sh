#!/bin/bash

cd

# pacman configuration
sudo sed -i 's/#Color/Color/g' /etc/pacman.conf
sudo sed -i 's/#ParallelDownloads/ParallelDownloads/g' /etc/pacman.conf

# install paru
pacman -S git rustup
rustup default stable
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru

# bash configuration
paru -S bash-completion
grep -qxF 'export HISTCONTROL=ignoreboth' ~/.bashrc \
  || echo "export HISTCONTROL=ignoreboth" >> ~/.bashrc
grep -qxF 'export PATH="$HOME/.config/scripts:$PATH"' ~/.bash_profile \
  || echo 'export PATH="$HOME/.config/scripts:$PATH"' >> ~/.bash_profile

# create home folders
mkdir -p downloads documents pics/screenshots videos/recordings music share

# copy dotfiles
cp -r .config ~/

# install packages
paru -S hyperland xdg-desktop-portal xdg-desktop-portal-hyprland \
  waybar-hyprland-git swaybg swayidle swaylock bemenu \
  polkit-kde-agent foot maku pavucontrol htop nm-connection-editor thunar xarchiver wob \
  mpv yt-dlp zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-ps \
  terminus-font ttf-jetbrains-mono-nerd \
  greetsd greetd-tuigreet \
  grim slurp swappy wf-recorder libva-mesa-driver \
  vscodium-bin thunderbird librewolf torbrowser-launcher ufw mousepad \
  wireguard-tools

# configure greeter
sudo sed -i 's/user = "greeter"/#user = "greeter"/g' /etc/pacman.conf
sudo sed -i 's/command = "agreety --cmd /bin/sh"/command = "tuigreet --cmd Hyprland"/g' /etc/pacman.conf
sudo systemctl enable greetd.service

# activate firewall
sudo ufw enable
sudo ufw systemctl enable --now ufw
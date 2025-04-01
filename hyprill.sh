#!/bin/bash

# Install yay

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

# Install Hyprland

yay -S ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite libxrender libxcursor pixman wayland-protocols cairo pango libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info cpio tomlplusplus hyprlang hyprcursor hyprwayland-scanner xcb-util-errors hyprutils glaze hyprgraphics aquamarine re2 hyprland-qtutils

git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
make all && sudo make install
cd

# Install Illogical Impulse

bash <(curl -s "https://end-4.github.io/dots-hyprland-wiki/setup.sh")
mv ~/.config/hypr/hyprland.conf.new ~/.config/hypr/hyprland.conf
cd
Hyprland

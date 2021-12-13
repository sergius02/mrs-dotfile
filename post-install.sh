#!/bin/bash

bash modules/fzf/install

regolith-look set dracula
regolith-look refresh

# Alacritty build
mkdir -p $HOME/Programas

# Some Picom tweaks
sudo cp /etc/regolith/picom/config /etc/regolith/picom/config_old
sudo cp $HOME/.dotfiles/desktop/regolith/picom/config /etc/regolith/picom/config

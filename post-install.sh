#!/bin/bash

bash modules/fzf/install

regolith-look set dracula
regolith-look refresh

mkdir -p $HOME/.config/alacritty/themes
wget https://raw.githubusercontent.com/dracula/alacritty/master/dracula.yml -O $HOME/.config/alacritty/themes/dracula.yml

# Some Picom tweaks
sudo cp /etc/regolith/picom/config /etc/regolith/picom/config_old
sudo cp $HOME/.dotfiles/desktop/regolith/picom/config /etc/regolith/picom/config

# Emojis support!
mkdir -p $HOME/.fonts
wget https://github.com/googlefonts/noto-emoji/raw/main/fonts/NotoColorEmoji.ttf -O $HOME/.fonts/Noto\ Color\ Emoji.ttf
sudo fc-cache -fv

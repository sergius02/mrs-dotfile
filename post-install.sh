#!/bin/bash

bash modules/fzf/install

regolith-look set dracula
regolith-look refresh

# Alacritty build
mkdir -p $HOME/Programas
git clone https://github.com/alacritty/alacritty.git $HOME/Programas/Alacritty
cd $HOME/Programas/Alacritty

rustup override set stable
rustup update stable

cargo build --release

sudo tic -xe alacritty,alacritty-direct extra/alacritty.info

sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

sudo mkdir -p /usr/local/share/man/man1
gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null

# Polybar themes
cd $HOME/.dotfiles/desktop/applications/polybar-themes
sudo chmod +x setup.sh && ./setup.sh


#!/bin/bash

ln -s $HOME/.dotfiles/modules/SpaceVim $HOME/.SpaceVim
ln -s $HOME/.dotfiles/modules/fzf $HOME/.fzf

ln -s $HOME/.dotfiles/shells/zsh/.zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/shells/zsh/.fzf.zsh $HOME/.fzf.zsh

ln -s $HOME/.dotfiles/layouts/keyboard/.dygma_layers.json $HOME/.dygma_layouts.json

# Emojis config
mkdir $HOME/.config/fontconfig/conf.d
ln -s $HOME/.dotfiles/fonts/confs/01-emoji.conf $HOME/.config/fontconfig/conf.d

# A nice theme for GTK
ln -s $HOME/.dotfiles/desktop/themes/dracula-theme $HOME/.themes/dracula-theme

# ZSH stuff
ln -s $HOME/.dotfiles/modules/ohmyzsh $HOME/.oh-my-zsh
ln -s $HOME/.dotfiles/shells/zsh/themes/dracula-zsh/dracula.zsh-theme $HOME/.oh-my-zsh/themes/dracula.zsh-theme
ln -s $HOME/.dotfiles/shells/zsh/plugins/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Alacritty
ln -s $HOME/.dotfiles/terminals/alacritty $HOME/.config/

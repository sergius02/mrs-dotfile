#!/bin/bash

ln -s $HOME/.dotfiles/modules/SpaceVim $HOME/.SpaceVim
ln -s $HOME/.dotfiles/modules/fzf $HOME/.fzf

ln -s $HOME/.dotfiles/shells/zsh/.zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/shells/zsh/.fzf.zsh $HOME/.fzf.zsh

ln -s $HOME/.dotfiles/layouts/keyboard/.dygma_layers.json $HOME/.dygma_layouts.json

# Emojis config
mkdir $HOME/.config/fontconfig/conf.d
ln -s $HOME/.dotfiles/fonts/confs/01-emoji.conf $HOME/.config/fontconfig/conf.d

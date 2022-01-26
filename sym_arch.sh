#!/bin/bash

#######################
# Create the symlinks #
#######################

# EndeavourOS stuff
ln -fs $HOME/.dotfiles/desktop/endeavouros/i3/config $HOME/.config/i3/config

# ZSH stuff
ln -fs $HOME/.dotfiles/shells/zsh/.zshrc $HOME/.zshrc
ln -fs $HOME/.dotfiles/shells/zsh/.fzf.zsh $HOME/.fzf.zsh

# NPM packages folder to user home
mkdir -p $HOME/.npm-packages
ln -fs $HOME/.dotfiles/shells/npm/.npmrc $HOME/.npmrc

# Alacritty
mkdir -p $HOME/.config/alacritty
ln -fs $HOME/.dotfiles/terminals/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml

# IdeaVIM
ln -fs $HOME/.dotfiles/editors/intellij/.ideavimrc $HOME/.ideavimrc

# IdeaVIM
ln -fs $HOME/.dotfiles/editors/intellij/.ideavimrc $HOME/.ideavimrc

# Spaceship prompt for ZSH
ln -fs $HOME/.dotfiles/modules/spaceship-prompt/spaceship.zsh-theme $HOME/.oh-my-zsh/custom/themes

# Git config
ln -fs $HOME/.dotfiles/desktop/git/.gitconfig_global $HOME/.gitconfig
mkdir -p $HOME/Arvo
ln -fs $HOME/.dotfiles/desktop/git/.gitconfig_arvo $HOME/Arvo/.gitconfig

# Ranger file manager config
ln -fs $HOME/.dotfiles/desktop/applications/ranger $HOME/.config/ranger

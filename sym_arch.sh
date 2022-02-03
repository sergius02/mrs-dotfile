#!/bin/bash

#######################
# Create the symlinks #
#######################

# EndeavourOS stuff
ln -fs $HOME/.dotfiles/desktop/endeavouros/i3/config $HOME/.config/i3/config
ln -fs $HOME/.dotfiles/desktop/endeavouros/i3/i3blocks.conf $HOME/.config/i3/i3blocks.conf
ln -fs $HOME/.dotfiles/desktop/endeavouros/i3/scripts $HOME/.config/i3/scripts

# ZSH stuff
ln -fs $HOME/.dotfiles/shells/zsh/.zshrc $HOME/.zshrc
ln -fs $HOME/.dotfiles/shells/zsh/.fzf.zsh $HOME/.fzf.zsh

# NPM packages folder to user home
mkdir -p $HOME/.npm-packages
ln -fs $HOME/.dotfiles/shells/npm/.npmrc $HOME/.npmrc

# Alacritty
mkdir -p $HOME/.config/alacritty
ln -fs $HOME/.dotfiles/terminals/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml

# Neovim configs
ln -fs $HOME/.dotfiles/editors/nvim $HOME/.config/nvim

# IdeaVIM
ln -fs $HOME/.dotfiles/editors/intellij/.ideavimrc $HOME/.ideavimrc

# Spaceship prompt for ZSH
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Git config
ln -fs $HOME/.dotfiles/desktop/git/.gitconfig_global $HOME/.gitconfig
mkdir -p $HOME/Arvo
ln -fs $HOME/.dotfiles/desktop/git/.gitconfig_arvo $HOME/Arvo/.gitconfig

# Ranger file manager config
ln -fs $HOME/.dotfiles/desktop/applications/ranger $HOME/.config/ranger

# Other configs
sudo ln -fs $HOME/.dotfiles/others/maven/settings.xml /opt/maven/conf/settings.xml

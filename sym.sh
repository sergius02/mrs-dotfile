#!/bin/bash

#######################
# Create the symlinks #
#######################

# ZSH stuff
ln -fs $HOME/.dotfiles/shells/zsh/.zshrc $HOME/.zshrc
ln -fs $HOME/.dotfiles/shells/zsh/.fzf.zsh $HOME/.fzf.zsh

# NPM packages folder to user home
mkdir -p $HOME/.npm-packages
ln -fs $HOME/.dotfiles/shells/npm/.npmrc $HOME/.npmrc

# Alacritty
mkdir -p $HOME/.config/alacritty
ln -fs $HOME/.dotfiles/terminals/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml

# Polybar
ln -fs $HOME/.dotfiles/desktop/applications/polybar $HOME/.config/

# IdeaVIM
ln -fs $HOME/.dotfiles/editors/intellij/.ideavimrc $HOME/.ideavimrc

# Spaceship prompt for ZSH
ln -fs $HOME/.dotfiles/modules/spaceship-prompt/spaceship.zsh-theme $HOME/.oh-my-zsh/custom/themes

# Regolith
ln -fs $HOME/.dotfiles/desktop/regolith/i3/config $HOME/.config/regolith/i3/config
ln -fs $HOME/.dotfiles/desktop/regolith/Xresources $HOME/.config/regolith/Xresources

# Polybar
ln -fs $HOME/.dotfiles/desktop/applications/polybar/config.ini $HOME/.config/polybar/panels/config.ini
ln -fs $HOME/.dotfiles/desktop/applications/polybar/launch.sh $HOME/.config/polybar/launch.sh

# Git config
ln -fs $HOME/.dotfiles/desktop/git/.gitconfig_global $HOME/.gitconfig
mkdir -p $HOME/Arvo
ln -fs $HOME/.dotfiles/desktop/git/.gitconfig_arvo $HOME/Arvo/.gitconfig

# Regolith background
sudo ln -fs $HOME/.dotfiles/desktop/regolith/backgrounds/regolith-dracula.png /usr/share/backgrounds

# Ranger file manager config
ln -fs $HOME/.dotfiles/desktop/applications/ranger $HOME/.config/ranger

# Monitors layout
ln -fs $HOME/.config/monitors.xml $HOME/.dotfiles/layouts/monitors/monitors.xml

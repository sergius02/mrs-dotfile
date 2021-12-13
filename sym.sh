#!/bin/bash

mkdir -p $HOME/.npm-packages
ln -fs $HOME/.dotfiles/shells/zsh/.zshrc $HOME/.zshrc
ln -fs $HOME/.dotfiles/shells/zsh/.fzf.zsh $HOME/.fzf.zsh
ln -fs $HOME/.dotfiles/shells/npm/.npmrc $HOME/.npmrc

# ZSH stuff
ln -fs $HOME/.dotfiles/shells/zsh/themes/dracula-zsh/dracula.zsh-theme $HOME/.oh-my-zsh/themes/dracula.zsh-theme
ln -fs $HOME/.dotfiles/shells/zsh/plugins/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Alacritty
ln -fs $HOME/.dotfiles/terminals/alacritty $HOME/.config/

# Polybar
ln -fs $HOME/.dotfiles/desktop/applications/polybar $HOME/.config/

# IdeaVIM
ln -fs $HOME/.dotfiles/editors/intellij/.ideavimrc $HOME/

# Spaceship prompt for ZSH
ln -fs $HOME/.dotfiles/modules/spaceship-prompt/spaceship.zsh-theme $HOME/.oh-my-zsh/custom/themes

# Regolith
ln -fs $HOME/.dotfiles/desktop/regolith/i3/config $HOME/.config/regolith/i3/config
ln -fs $HOME/.dotfiles/desktop/regolith/Xresources $HOME/.config/regolith/Xresources

# Ulauncher
mkdir -p $HOME/.config/ulauncher/user-themes
ln -fs $HOME/.dotfiles/desktop/applications/ulauncher/dracula-theme $HOME/.config/ulauncher/user-themes/dracula-ulauncher

# Polybar
ln -fs $HOME/.dotfiles/desktop/applications/polybar-config/config.ini $HOME/.config/polybar/panels
ln -fs $HOME/.dotfiles/desktop/applications/polybar-config/launch.sh $HOME/.config/polybar/

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

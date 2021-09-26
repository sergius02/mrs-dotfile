#!/bin/bash

ln -s $HOME/.dotfiles/modules/SpaceVim $HOME/.SpaceVim
ln -s $HOME/.dotfiles/modules/fzf $HOME/.fzf

ln -s $HOME/.dotfiles/shells/zsh/.zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/shells/zsh/.fzf.zsh $HOME/.fzf.zsh

# My Dygma raise configurations
ln -s $HOME/.dotfiles/layouts/keyboard/.dygma_layers.json $HOME/.dygma_layouts.json
ln -s $HOME/.dotfiles/layouts/keyboard/.allMacros.json $HOME/.allMacros.json

# ZSH stuff
ln -s $HOME/.dotfiles/modules/ohmyzsh $HOME/.oh-my-zsh
ln -s $HOME/.dotfiles/shells/zsh/themes/dracula-zsh/dracula.zsh-theme $HOME/.oh-my-zsh/themes/dracula.zsh-theme
ln -s $HOME/.dotfiles/shells/zsh/plugins/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Alacritty
ln -s $HOME/.dotfiles/terminals/alacritty $HOME/.config/

# Polybar
ln -s $HOME/.dotfiles/desktop/applications/polybar $HOME/.config/

# IdeaVIM
ln -s $HOME/.dotfiles/editors/intellij/.ideavimrc $HOME/

# Spaceship prompt for ZSH
ln -s $HOME/.dotfiles/modules/spaceship-prompt/spaceship.zsh-theme $HOME/.oh-my-zsh/custom/themes

# Regolith
ln -s $HOME/.dotfiles/desktop/regolith/i3 $HOME/.config/regolith/i3
ln -s $HOME/.dotfiles/desktop/regolith/Xresources $HOME/.config/regolith/Xresources

# Ulauncher
mkdir -p $HOME/.config/ulauncher/user-themes
ln -s $HOME/.dotfiles/desktop/applications/ulauncher/dracula-theme $HOME/.config/ulauncher/user-themes/dracula-ulauncher

# Polybar
ln -fs $HOME/.dotfiles/desktop/applications/polybar-config/config.ini $HOME/.config/polybar/panels
ln -fs $HOME/.dotfiles/desktop/applications/polybar-config/launch.sh $HOME/.config/polybar/

# Git config
ln -fs $HOME/.dotfiles/desktop/git/.gitconfig_global $HOME/.gitconfig
ln -fs $HOME/.dotfiles/desktop/git/.gitconfig_arvo $HOME/Arvo/.gitconfig

# Regolith background
sudo ln -fs $HOME/.dotfiles/desktop/regolith/backgrounds/regolith-dracula.png /usr/share/backgrounds

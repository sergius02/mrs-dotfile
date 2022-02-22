sudo pacman -Syu

yay -S neovim jdk8-openjdk jdk11-openjdk postgresql python3 wget exa telegram-desktop cmake zsh gnome-boxes remmina remmina-plugin-rdesktop jetbrains-toolbox brave-nightly-bin rustup alacritty ranger docker docker-compose vala bitwarden bitwarden-cli gnome-disk-utility nextcloud-client dracula-gtk-theme pamac-all spotify rofimoji noto-fonts-emoji xclip xdotool appimagelauncher gucharmap btop virtualbox gnome-keyring visual-studio-code-bin maven ant discord thunderbird thunderbird-i18n-es-es debtap postman-bin nerd-fonts-cascadia-code gitkraken rust-analyzer vala-language-server runjs-bin the_silver_searcher flatpak-builder

# Oh my ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf

# Spaceship prompt for ZSH
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Dracula theme for alacritty
mkdir -p $HOME/.config/alacritty/themes
wget https://raw.githubusercontent.com/dracula/alacritty/master/dracula.yml -O $HOME/.config/alacritty/themes/dracula.yml

# Vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

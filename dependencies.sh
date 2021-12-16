############################
# Install the dependencies #
############################

# Things i need
sudo apt install -y git openjdk-8-jre openjdk-8-jdk neovim postgresql python3 python3-pip wget exa telegram-desktop regolith-look-dracula cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 zsh gnome-boxes remmina remmina-plugin-rdp

mkdir -p $HOME/.jetbrains-toolbox
wget https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-1.21.9547.tar.gz -P $HOME/.jetbrains-toolbox
cd $HOME/.jetbrains-toolbox && tar -xvf jetbrains-toolbox-1.21.9547.tar.gz && ./jetbrains-toolbox

# Brave browser
sudo apt install -y apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg https://brave-browser-apt-nightly.s3.brave.com/brave-browser-nightly-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg arch=amd64] https://brave-browser-apt-nightly.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-nightly.list

sudo apt update

sudo apt install -y brave-browser-nightly

# rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Ulauncher
sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher
mkdir -p $HOME/.config/ulauncher/user-themes
git clone https://github.com/dracula/ulauncher.git $HOME/.config/ulauncher/user-themes/dracula-ulauncher

# Polybar
sudo apt install -y polybar

# Polybar-themes!
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git $HOME/.local/share/polybar-themes
cd $HOME/.local/share/polybar-themes
sudo chmod +x setup.sh && ./setup.sh

# Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Spaceship prompt for ZSH
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# fzf everywhere!
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
$HOME/.fzf/install

# SpaceVim
curl -sLf https://spacevim.org/install.sh | bash

# Ranger file manager
git clone https://github.com/ranger/ranger.git $HOME/Programas/ranger
cd $HOME/Programas/ranger
sudo make install

# Alacritty
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

# Docker!
sudo apt update
sudo apt install ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker sergio

# Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

mkdir -p $HOME/.npm-packages
curl -sfLS install-node.vercel.app/lts | bash -s -- --prefix=$HOME/.npm-packages

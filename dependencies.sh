# Things i need
sudo apt install -y git openjdk-8-jre openjdk-8-jdk neovim postgresql python3 python3-pip wget exa telegram-desktop regolith-look-dracula cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 zsh

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

# Polybar
sudo apt install -y polybar

# Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# SpaceVim
curl -sLf https://spacevim.org/install.sh | bash

# Ranger file manager
git clone https://github.com/ranger/ranger.git $HOME/Programas/ranger
cd $HOME/Programas/ranger
sudo make install

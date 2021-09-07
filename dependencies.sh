# Things i need
sudo apt install git openjdk-8-jre openjdk-8-jdk neovim postgresql python3 python3-pip wget exa telegram-desktop regolith-look-dracula cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 zsh

mkdir -p $HOME/.jetbrains-toolbox
wget https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-1.21.9547.tar.gz -P $HOME/.jetbrains-toolbox
cd $HOME/.jetbrains-toolbox && tar -xvf jetbrains-toolbox-1.21.9547.tar.gz && ./jetbrains-toolbox

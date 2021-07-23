# Things i need
sudo apt install openjdk-8-jre openjdk-8-jdk neovim python-pynvim postgresql python3 python3-pip wget exa

mkdir -p $HOME/.jetbrains-toolbox
wget https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-1.21.9547.tar.gz -P $HOME/.jetbrains-toolbox
cd $HOME/.jetbrains-toolbox && tar -xvf jetbrains-toolbox-1.21.9547.tar.gz && ./jetbrains-toolbox

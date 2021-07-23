# Things i need
sudo apt install openjdk-8-jre openjdk-8-jdk neovim python-pynvim postgresql python3 python3-pip wget

mkdir -p $HOME/.jetbrains-toolbox
wget https://download-cf.jetbrains.com/toolbox/jetbrains-toolbox-1.20.7940.tar.gz -P $HOME/.jetbrains-toolbox
cd $HOME/.jetbrains-toolbox && tar -xvf jetbrains-toolbox-1.20.7940.tar.gz && ./jetbrains-toolbox

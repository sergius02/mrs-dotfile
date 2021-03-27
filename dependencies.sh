# Things i need
sudo pacman -S jre8-openjdk jdk8-openjdk neovim python-pynvim postgresql pgadmin4 python python-pip wget

mkdir -p $HOME/.jetbrains-toolbox
wget https://download-cf.jetbrains.com/toolbox/jetbrains-toolbox-1.20.7940.tar.gz -P $HOME/.jetbrains-toolbox
cd $HOME/.jetbrains-toolbox && tar -xvf jetbrains-toolbox-1.20.7940.tar.gz && ./jetbrains-toolbox

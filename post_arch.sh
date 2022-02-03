#!/bin/sh

echo "192.168.0.10:/volume1/home/sergio/Drive/Arvo/Nextcloud /home/sergio/Arvo/Nextcloud nfs defaults 0 0" | sudo tee -a /etc/fstab
echo "192.168.0.10:/volume1/home/sergio/Drive/Arvo/Recursos /home/sergio/Arvo/Recursos nfs defaults 0 0" | sudo tee -a /etc/fstab

echo "export PATH=\"/home/sergio/.local/bin:\$PATH\"" | sudo tee -a /etc/profile

# NPM dependencies
npm install -g pyright yarn pm2 vue@next @angular/cli typescript typescript-language-server docker-langserver angular-language-server

# Some PostgreSQL initial configurations
sudo passwd postgres
su - postgres -c "initdb --locale en_US.UTF-8 -D '/var/lib/postgres/data'"
su - postgres -c "psql -c \"CREATE ROLE sergio SUPERUSER LOGIN PASSWORD 'postgres'\""

# Vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#!/bin/bash

# apt stuff
sudo add-apt-repository ppa:mattrose/terminator
sudo apt-get update

sudo apt-get install -y terminator \
    chrome-gnome-shell \
    curl \
    exiftool \
    gcc \
    git \
    gnuplot \
    htop \
    jq \
    make \
    minicom \
    mosquitto \
    mosquitto-clients \
    nmap \
    picocom \
    rsync \
    tmux \
    unzip \
    vim \
    wget \
    zsh

# oh my zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# gnome extentions
wget -N -q "https://raw.githubusercontent.com/cyfrost/install-gnome-extensions/master/install-gnome-extensions.sh" -O ./install-gnome-extensions.sh \
  && sudo apt install gir1.2-nm-1.0 gir1.2-gtop-2.0 \
  && chmod +x install-gnome-extensions.sh \
  && ./install-gnome-extensions.sh --enable --file gnome_extentions.txt

# snaps
sudo snap install atom --classic
sudo snap install clion --classic
sudo snap install goland --classic
sudo snap install slack
sudo snap install spotify
sudo snap install pycharm-professional  --classic

# dotfiles
cp gitconfig ~/.gitconfig
cp vimrc ~/.vimrc
cp -r oh-my-zsh/plugins/* $HOME/.oh-my-zsh/plugins
cp -r oh-my-zsh/themes/spaceship-prompt $HOME/.oh-my-zsh/themes
ln -s $HOME/.oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme $HOME/.oh-my-zsh/themes/spaceship.zsh-theme
cp oh-my-zsh/aliases $HOME/.oh-my-zsh/
cp zshrc ~/.zshrc

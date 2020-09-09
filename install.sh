#!/usr/bin/env bash

# Install ZSH
sudo apt-get install -y vim zsh
sudo chsh -s /bin/zsh $USER

# Install Oh My ZSH (if it is not already installed)
[ ! -d "~/.oh-my-zsh" ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# copy dotfiles into ~
shopt -s dotglob # include . in *
yes | cp -rf ~/dotfiles/* ~
#!/usr/bin/env bash

# Install ZSH
sudo apt-get install -y vim zsh
sudo chsh -s $(readlink -f $(which zsh)) $USER

# Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

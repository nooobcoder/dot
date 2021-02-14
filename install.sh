#!/usr/bin/env bash

# Install ZSH
sudo apt-get install -y vim zsh nano
sudo chsh -s /bin/zsh $USER

# Install and configure Oh My ZSH (if it is not already installed)
if [ -d "~/.oh-my-zsh" ] 
then
    echo "Directory /path/to/dir exists." 
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    # Append zshrc stuff to end of file
    touch ~/.zshrc # not sure if this will always exist at this point :/
    cat .zshrc >> ~/.zshrc
fi

# copy dotfiles into ~
shopt -s dotglob # include . in *
shopt -s extglob
yes | cp -rf ~/dotfiles/!(.git|.zshrc|.|..) ~

# Install extensions
/opt/coder/code-server/bin/code-server --install-extension esbenp.prettier-vscode
/opt/coder/code-server/bin/code-server daylerees.rainglow
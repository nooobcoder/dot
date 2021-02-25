#!/usr/bin/env bash


sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git
sudo apt install python3-pip
sudo pip3 install pylint
sudo pip3 install autopep8
sudo apt-get install openjdk-11-jdk -y
sudo apt install g++ -y
sudo apt install gcc -y
sudo apt install gdb -y
sudo apt install nodejs -y
sudo apt install npm -y

# Install ZSH
sudo apt-get install -y vim zsh nano
sudo chsh -s /bin/zsh $USER

# Making a project folder
mkdir project

# Install and configure Oh My ZSH (if it is not already installed)
if [ -d "/home/coder/.oh-my-zsh" ] 
then
    echo "oh-my-zsh is already installed" 
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    # Append zshrc stuff to end of file
    touch ~/.zshrc # not sure if this will always exist at this point :/
    cat .zshrc >> ~/.zshrc
fi

# copy dotfiles into ~
shopt -s dotglob # include . in *
shopt -s extglob
yes | cp -rf ~/dotfiles/!(.git|.zshrc|.|..|.local) ~

# Set VS Code preferences for the FIRST time
if [ -f "/home/coder/.local/share/code-server/User/settings.json" ] 
then
    echo "VS Code settings are already present." 
else
    cp -rf /home/coder/dotfiles/.local ~/.local
    # Install extensions
    /opt/coder/code-server/bin/code-server --install-extension esbenp.prettier-vscode
    /opt/coder/code-server/bin/code-server --install-extension daylerees.rainglow
    /opt/coder/code-server/bin/code-server --install-extension vscjava.vscode-java-pack
    /opt/coder/code-server/bin/code-server --install-extension oderwat.indent-rainbow
    /opt/coder/code-server/bin/code-server --install-extension CoenraadS.bracket-pair-colorizer
    /opt/coder/code-server/bin/code-server --install-extension k--kato.intellij-idea-keybindings
    /opt/coder/code-server/bin/code-server --install-extension ahmadawais.shades-of-purple
    /opt/coder/code-server/bin/code-server --install-extension evan-buss.font-switcher
    /opt/coder/code-server/bin/code-server --install-extension vscode-icons-team.vscode-icons
fi

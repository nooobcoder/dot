#!/usr/bin/env bash


sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt install python3-pip -y
sudo pip3 install pylint
sudo pip3 install pipenv
sudo pip3 install autopep8
sudo apt-get install openjdk-11-jdk -y
sudo apt install unzip
sudo apt install g++ -y
sudo apt install gcc -y
sudo apt install curl -y
sudo apt install gdb -y
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt install npm -y
sudo apt-get install iputils-ping -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt-get install neofetch htop -y
# Install node version manager nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Install ZSH
sudo apt-get install -y vim zsh nano
sudo chsh -s /bin/zsh $USER

git config --global user.name "nooobcoder"
git config --global user.email "suryashi2013@gmail.com"
git config --global user.signingkey F4471868B502ACC037FBF1FB7C2D646CF53E03BD
git config --global commit.gpgsign true  

# Permission fixes
sudo chmod -R 777 /home/coder/.local/lib

# Making a project folder
mkdir project

# Install and configure Oh My ZSH (if it is not already installed)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

# Install a plugin for ZSH auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install vercel's zsh theme
curl https://raw.githubusercontent.com/vercel/zsh-theme/master/vercel.zsh-theme -Lo ~/.oh-my-zsh/custom/themes/vercel.zsh-theme


sudo npm i -g nodemon serve eslint typescript npkill

DOTFILES_CLONE_PATH=$HOME/dotfiles
for dotfile in "$DOTFILES_CLONE_PATH/".*; do
  # Skip `..` and '.'
  [[ $dotfile =~ \.{1,2}$ ]] && continue
  # Skip Git related
  [[ $dotfile =~ \.git$ ]] && continue
  [[ $dotfile =~ \.gitignore$ ]] && continue
  [[ $dotfile =~ \.gitattributes$ ]] && continue

  echo "Symlinking $dotfile"
  ln -sf "$dotfile" "$HOME"
done

# Link VS Code settings
ln -sf $DOTFILES_CLONE_PATH/.local/share/code-server/User/settings.json $HOME/.local/share/code-server/User

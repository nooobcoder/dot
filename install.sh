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
if [ -d "/home/coder/.oh-my-zsh" ] 
then
    echo "oh-my-zsh is already installed" 
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    # Append zshrc stuff to end of file
    touch ~/.zshrc # not sure if this will always exist at this point :/
    cat .zshrc >> ~/.zshrc
fi

# Install a plugin for ZSH auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

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

# Install extensions
/var/tmp/coder/code-server/bin/code-server --install-extension esbenp.prettier-vscode
/var/tmp/coder/code-server/bin/code-server --install-extension humao.rest-client
/var/tmp/coder/code-server/bin/code-server --install-extension daylerees.rainglow
/var/tmp/coder/code-server/bin/code-server --install-extension vscjava.vscode-java-pack
/var/tmp/coder/code-server/bin/code-server --install-extension oderwat.indent-rainbow
/var/tmp/coder/code-server/bin/code-server --install-extension CoenraadS.bracket-pair-colorizer
/var/tmp/coder/code-server/bin/code-server --install-extension k--kato.intellij-idea-keybindings
/var/tmp/coder/code-server/bin/code-server --install-extension evan-buss.font-switcher
/var/tmp/coder/code-server/bin/code-server --install-extension vscode-icons-team.vscode-icons
/var/tmp/coder/code-server/bin/code-server --install-extension aaron-bond.better-comments
/var/tmp/coder/code-server/bin/code-server --install-extension ahmadawais.shades-of-purple
/var/tmp/coder/code-server/bin/code-server --install-extension AlanWalk.quick-open-file
/var/tmp/coder/code-server/bin/code-server --install-extension avraammavridis.vsc-react-documentation
/var/tmp/coder/code-server/bin/code-server --install-extension bengreenier.vscode-node-readme
/var/tmp/coder/code-server/bin/code-server --install-extension bierner.color-info
/var/tmp/coder/code-server/bin/code-server --install-extension burkeholland.simple-react-snippets
/var/tmp/coder/code-server/bin/code-server --install-extension christian-kohler.npm-intellisense
/var/tmp/coder/code-server/bin/code-server --install-extension christian-kohler.path-intellisense
/var/tmp/coder/code-server/bin/code-server --install-extension CoenraadS.bracket-pair-colorizer
/var/tmp/coder/code-server/bin/code-server --install-extension dahong.theme-bear
/var/tmp/coder/code-server/bin/code-server --install-extension dbaeumer.vscode-eslint
/var/tmp/coder/code-server/bin/code-server --install-extension dsznajder.es7-react-js-snippets
/var/tmp/coder/code-server/bin/code-server --install-extension ecmel.vscode-html-css
/var/tmp/coder/code-server/bin/code-server --install-extension eg2.vscode-npm-script
/var/tmp/coder/code-server/bin/code-server --install-extension Equinusocio.vsc-material-theme
/var/tmp/coder/code-server/bin/code-server --install-extension esbenp.prettier-vscode
/var/tmp/coder/code-server/bin/code-server --install-extension evan-buss.font-switcher
/var/tmp/coder/code-server/bin/code-server --install-extension Fr43nk.seito-openfile
/var/tmp/coder/code-server/bin/code-server --install-extension GitHub.github-vscode-theme
/var/tmp/coder/code-server/bin/code-server --install-extension jpoissonnier.vscode-styled-components
/var/tmp/coder/code-server/bin/code-server --install-extension k--kato.intellij-idea-keybindings
/var/tmp/coder/code-server/bin/code-server --install-extension lacroixdavid1.vscode-format-context-menu
/var/tmp/coder/code-server/bin/code-server --install-extension liuji-jim.vue
/var/tmp/coder/code-server/bin/code-server --install-extension mikestead.dotenv
/var/tmp/coder/code-server/bin/code-server --install-extension mongodb.mongodb-vscode
/var/tmp/coder/code-server/bin/code-server --install-extension monokai.theme-monokai-pro-vscode
/var/tmp/coder/code-server/bin/code-server --install-extension ms-python.python
/var/tmp/coder/code-server/bin/code-server --install-extension ms-vscode.node-debug2
/var/tmp/coder/code-server/bin/code-server --install-extension ms-vscode.vscode-typescript-next
/var/tmp/coder/code-server/bin/code-server --install-extension naumovs.color-highlight
/var/tmp/coder/code-server/bin/code-server --install-extension oderwat.indent-rainbow
/var/tmp/coder/code-server/bin/code-server --install-extension OfHumanBondage.react-proptypes-intellisense
/var/tmp/coder/code-server/bin/code-server --install-extension Perkovec.emoji
/var/tmp/coder/code-server/bin/code-server --install-extension PKief.material-icon-theme
/var/tmp/coder/code-server/bin/code-server --install-extension ritwickdey.LiveServer
/var/tmp/coder/code-server/bin/code-server --install-extension steoates.autoimport
/var/tmp/coder/code-server/bin/code-server --install-extension teabyii.ayu
/var/tmp/coder/code-server/bin/code-server --install-extension tgreen7.vs-code-node-require
/var/tmp/coder/code-server/bin/code-server --install-extension tinkertrain.theme-panda
/var/tmp/coder/code-server/bin/code-server --install-extension vaniship.vue-ls-snippets
/var/tmp/coder/code-server/bin/code-server --install-extension wix.vscode-import-cost
/var/tmp/coder/code-server/bin/code-server --install-extension dahong.theme-bear
/var/tmp/coder/code-server/bin/code-server --install-extension ms-toolsai.jupyter
/var/tmp/coder/code-server/bin/code-server --install-extension ms-vscode.cpptools
/var/tmp/coder/code-server/bin/code-server --install-extension Perkovec.emoji
/var/tmp/coder/code-server/bin/code-server --install-extension redhat.java
/var/tmp/coder/code-server/bin/code-server --install-extension vscjava.vscode-java-debug
/var/tmp/coder/code-server/bin/code-server --install-extension vscjava.vscode-java-dependency
/var/tmp/coder/code-server/bin/code-server --install-extension vscjava.vscode-java-pack
/var/tmp/coder/code-server/bin/code-server --install-extension vscjava.vscode-java-test
/var/tmp/coder/code-server/bin/code-server --install-extension vscjava.vscode-maven
/var/tmp/coder/code-server/bin/code-server --install-extension vsls-contrib.codetour
/var/tmp/coder/code-server/bin/code-server --install-extension xaver.clang-format
/var/tmp/coder/code-server/bin/code-server --install-extension trinm1709.dracula-theme-from-intellij

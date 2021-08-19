#!/usr/bin/env bash


sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt install python3-pip -y
sudo pip3 install pylint
sudo pip3 install autopep8
sudo apt-get install openjdk-11-jdk -y
sudo apt install unzip
sudo apt install g++ -y
sudo apt install gcc -y
sudo apt install gdb -y
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt install npm -y
sudo apt-get install iputils-ping -y
sudo apt install nodejs -y
sudo apt install npm -y

# Install DenoJS from source
curl -fsSL https://deno.land/x/install/install.sh | sh

# Install ZSH
sudo apt-get install -y vim zsh nano
sudo chsh -s /bin/zsh $USER

git config --global user.name "nooobcoder"
git config --global user.email "suryashi2013@gmail.com"

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
fi

# Install extensions
code-server --install-extension esbenp.prettier-vscode
code-server --install-extension daylerees.rainglow
code-server --install-extension vscjava.vscode-java-pack
code-server --install-extension oderwat.indent-rainbow
code-server --install-extension CoenraadS.bracket-pair-colorizer
code-server --install-extension k--kato.intellij-idea-keybindings
code-server --install-extension evan-buss.font-switcher
code-server --install-extension vscode-icons-team.vscode-icons
code-server --install-extension aaron-bond.better-comments
code-server --install-extension ahmadawais.shades-of-purple
code-server --install-extension AlanWalk.quick-open-file
code-server --install-extension avraammavridis.vsc-react-documentation
code-server --install-extension bengreenier.vscode-node-readme
code-server --install-extension bierner.color-info
code-server --install-extension burkeholland.simple-react-snippets
code-server --install-extension christian-kohler.npm-intellisense
code-server --install-extension christian-kohler.path-intellisense
code-server --install-extension CoenraadS.bracket-pair-colorizer
code-server --install-extension dahong.theme-bear
code-server --install-extension dbaeumer.vscode-eslint
code-server --install-extension dsznajder.es7-react-js-snippets
code-server --install-extension ecmel.vscode-html-css
code-server --install-extension eg2.vscode-npm-script
code-server --install-extension Equinusocio.vsc-material-theme
code-server --install-extension esbenp.prettier-vscode
code-server --install-extension evan-buss.font-switcher
code-server --install-extension Fr43nk.seito-openfile
code-server --install-extension GitHub.github-vscode-theme
code-server --install-extension jpoissonnier.vscode-styled-components
code-server --install-extension k--kato.intellij-idea-keybindings
code-server --install-extension lacroixdavid1.vscode-format-context-menu
code-server --install-extension liuji-jim.vue
code-server --install-extension mikestead.dotenv
code-server --install-extension mongodb.mongodb-vscode
code-server --install-extension monokai.theme-monokai-pro-vscode
code-server --install-extension ms-python.python
code-server --install-extension ms-vscode.node-debug2
code-server --install-extension ms-vscode.vscode-typescript-next
code-server --install-extension naumovs.color-highlight
code-server --install-extension oderwat.indent-rainbow
code-server --install-extension OfHumanBondage.react-proptypes-intellisense
code-server --install-extension Perkovec.emoji
code-server --install-extension PKief.material-icon-theme
code-server --install-extension ritwickdey.LiveServer
code-server --install-extension steoates.autoimport
code-server --install-extension teabyii.ayu
code-server --install-extension tgreen7.vs-code-node-require
code-server --install-extension tinkertrain.theme-panda
code-server --install-extension vaniship.vue-ls-snippets
code-server --install-extension wix.vscode-import-cost
code-server --install-extension dahong.theme-bear
code-server --install-extension ms-toolsai.jupyter
code-server --install-extension ms-vscode.cpptools
code-server --install-extension Perkovec.emoji
code-server --install-extension redhat.java
code-server --install-extension vscjava.vscode-java-debug
code-server --install-extension vscjava.vscode-java-dependency
code-server --install-extension vscjava.vscode-java-pack
code-server --install-extension vscjava.vscode-java-test
code-server --install-extension vscjava.vscode-maven
code-server --install-extension vsls-contrib.codetour
code-server --install-extension xaver.clang-format
code-server --install-extension denoland.vscode-deno
code-server --install-extension trinm1709.dracula-theme-from-intellij
#!/usr/bin/env bash


sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt install python3-pip -y
sudo pip3 install pylint -y
sudo pip3 install autopep8 -y
sudo apt-get install openjdk-11-jdk -y
sudo apt install g++ -y
sudo apt install gcc -y
sudo apt install gdb -y
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt install npm -y
sudo apt-get install iputils-ping -y
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
    /opt/coder/code-server/bin/code-server --install-extension evan-buss.font-switcher
    /opt/coder/code-server/bin/code-server --install-extension vscode-icons-team.vscode-icons
    /opt/coder/code-server/bin/code-server --install-extension aaron-bond.better-comments
    /opt/coder/code-server/bin/code-server --install-extension ahmadawais.shades-of-purple
    /opt/coder/code-server/bin/code-server --install-extension AlanWalk.quick-open-file
    /opt/coder/code-server/bin/code-server --install-extension avraammavridis.vsc-react-documentation
    /opt/coder/code-server/bin/code-server --install-extension bengreenier.vscode-node-readme
    /opt/coder/code-server/bin/code-server --install-extension bierner.color-info
    /opt/coder/code-server/bin/code-server --install-extension burkeholland.simple-react-snippets
    /opt/coder/code-server/bin/code-server --install-extension christian-kohler.npm-intellisense
    /opt/coder/code-server/bin/code-server --install-extension christian-kohler.path-intellisense
    /opt/coder/code-server/bin/code-server --install-extension CoenraadS.bracket-pair-colorizer
    /opt/coder/code-server/bin/code-server --install-extension dahong.theme-bear
    /opt/coder/code-server/bin/code-server --install-extension dbaeumer.vscode-eslint
    /opt/coder/code-server/bin/code-server --install-extension dsznajder.es7-react-js-snippets
    /opt/coder/code-server/bin/code-server --install-extension ecmel.vscode-html-css
    /opt/coder/code-server/bin/code-server --install-extension eg2.vscode-npm-script
    /opt/coder/code-server/bin/code-server --install-extension Equinusocio.vsc-material-theme
    /opt/coder/code-server/bin/code-server --install-extension esbenp.prettier-vscode
    /opt/coder/code-server/bin/code-server --install-extension evan-buss.font-switcher
    /opt/coder/code-server/bin/code-server --install-extension formulahendry.auto-close-tag
    /opt/coder/code-server/bin/code-server --install-extension formulahendry.auto-rename-tag
    /opt/coder/code-server/bin/code-server --install-extension Fr43nk.seito-openfile
    /opt/coder/code-server/bin/code-server --install-extension GitHub.github-vscode-theme
    /opt/coder/code-server/bin/code-server --install-extension jpoissonnier.vscode-styled-components
    /opt/coder/code-server/bin/code-server --install-extension k--kato.intellij-idea-keybindings
    /opt/coder/code-server/bin/code-server --install-extension lacroixdavid1.vscode-format-context-menu
    /opt/coder/code-server/bin/code-server --install-extension liuji-jim.vue
    /opt/coder/code-server/bin/code-server --install-extension mikestead.dotenv
    /opt/coder/code-server/bin/code-server --install-extension mongodb.mongodb-vscode
    /opt/coder/code-server/bin/code-server --install-extension monokai.theme-monokai-pro-vscode
    /opt/coder/code-server/bin/code-server --install-extension ms-python.python
    /opt/coder/code-server/bin/code-server --install-extension ms-vscode.node-debug2
    /opt/coder/code-server/bin/code-server --install-extension ms-vscode.vscode-typescript-next
    /opt/coder/code-server/bin/code-server --install-extension naumovs.color-highlight
    /opt/coder/code-server/bin/code-server --install-extension oderwat.indent-rainbow
    /opt/coder/code-server/bin/code-server --install-extension OfHumanBondage.react-proptypes-intellisense
    /opt/coder/code-server/bin/code-server --install-extension Perkovec.emoji
    /opt/coder/code-server/bin/code-server --install-extension PKief.material-icon-theme
    /opt/coder/code-server/bin/code-server --install-extension ritwickdey.LiveServer
    /opt/coder/code-server/bin/code-server --install-extension steoates.autoimport
    /opt/coder/code-server/bin/code-server --install-extension teabyii.ayu
    /opt/coder/code-server/bin/code-server --install-extension tgreen7.vs-code-node-require
    /opt/coder/code-server/bin/code-server --install-extension tinkertrain.theme-panda
    /opt/coder/code-server/bin/code-server --install-extension vaniship.vue-ls-snippets
    /opt/coder/code-server/bin/code-server --install-extension wix.vscode-import-cost
    /opt/coder/code-server/bin/code-server --install-extension dahong.theme-bear
/opt/coder/code-server/bin/code-server --install-extension ms-toolsai.jupyter
/opt/coder/code-server/bin/code-server --install-extension ms-vscode.cpptools
/opt/coder/code-server/bin/code-server --install-extension Perkovec.emoji
/opt/coder/code-server/bin/code-server --install-extension redhat.java
/opt/coder/code-server/bin/code-server --install-extension vscjava.vscode-java-debug
/opt/coder/code-server/bin/code-server --install-extension vscjava.vscode-java-dependency
/opt/coder/code-server/bin/code-server --install-extension vscjava.vscode-java-pack
/opt/coder/code-server/bin/code-server --install-extension vscjava.vscode-java-test
/opt/coder/code-server/bin/code-server --install-extension vscjava.vscode-maven
/opt/coder/code-server/bin/code-server --install-extension vsls-contrib.codetour
fi


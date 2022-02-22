export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="cloud"
plugins=(
  git
  dotenv
  zsh-autosuggestions
)

# Disable % eof
unsetopt prompt_cr prompt_sp

# Add code-server to path
export PATH=$PATH:/opt/coder/code-server/bin
export PATH=$PATH:/root/.local/bin
export JAVA_HOME=/home/coder/project/javajdk
export PATH=${PATH}:${JAVA_HOME}/bin

# For GPG to ask for pin entry
export GPG_TTY=$(tty)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 

source $ZSH/oh-my-zsh.sh

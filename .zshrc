export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="clean"

plugins=(
  git
  dotenv
)

# Add code-server to path
export PATH=$PATH:/opt/coder/code-server/bin

source $ZSH/oh-my-zsh.sh

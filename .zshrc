export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="cloud"
plugins=(
  git
  dotenv
)

# Disable % eof
unsetopt prompt_cr prompt_sp

# Add code-server to path
export PATH=$PATH:/opt/coder/code-server/bin

source $ZSH/oh-my-zsh.sh

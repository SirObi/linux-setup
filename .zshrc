export ZSH="/home/obi/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  jump
  autojump
)

source $ZSH/oh-my-zsh.sh

# User configuration
alias zshrld="source ~/.zshrc"
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
alias e="emacsclient -a -c"

. /usr/share/autojump/autojump.sh

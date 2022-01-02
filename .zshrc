export ZSH="/home/glotchimo/.oh-my-zsh"
export PATH=$PATH:$HOME/.local/bin:$HOME/go/bin

export LLVMROOT=$HOME/c++/llvm-project
export LLVMBIN=$LLVMROOT/build/bin

ZSH_THEME="duellj" # set by `omz`

plugins=(git golang vscode python virtualenv)

source $ZSH/oh-my-zsh.sh

alias zc="nvim ~/.zshrc"
alias omzc="nvim ~/.oh-my-zsh"
alias ic="nvim ~/.config/i3/config"
alias pc="nvim ~/.config/polybar/config"
alias ac="nvim ~/.alacritty.yml"
alias dc="nvim ~/.config/dunst/dunstrc"

alias td="todoist"
alias hk="heroku"

alias pm="python manage.py"

alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

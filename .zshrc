export ZSH="/home/glotchimo/.oh-my-zsh"
export PATH=$PATH:$HOME/.local/bin:$HOME/go/bin

ZSH_THEME="duellj"

plugins=(git golang vscode python virtualenv)

source $ZSH/oh-my-zsh.sh

alias zc="nvim ~/.zshrc"
alias omzc="nvim ~/.oh-my-zsh"
alias ic="nvim ~/.config/i3/config"
alias pc="nvim ~/.config/polybar/config"

alias td="todoist"
alias hk="heroku"

alias pm="python manage.py"

alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

source "$HOME/.config/todoist/todoist_functions.sh"

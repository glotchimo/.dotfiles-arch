export ZSH="/home/glotchimo/.oh-my-zsh"

ZSH_THEME="duellj"

plugins=(git golang vscode)

source $ZSH/oh-my-zsh.sh

alias zc="nvim ~/.zshrc"
alias omzc="nvim ~/.oh-my-zsh"
alias ic="nvim ~/.config/i3/config"
alias pc="nvim ~/.config/polybar/config"
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

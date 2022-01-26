source ~/.config/zsh-autocomplete/zsh-autocomplete.plugin.zsh

export ZSH="/home/glotchimo/.oh-my-zsh"
export PATH=$PATH:$HOME/.local/bin:$HOME/go/bin:$HOME/c++/llvm-project/build/lib

export EDITOR=nvim

export LLVMROOT=$HOME/c++/llvm-project
export LLVMBIN=$LLVMROOT/build/bin
export LD_LIBRARY_PATH=$LLVMROOT/build/lib

ZSH_THEME="typewritten"
export TYPEWRITTEN_SYMBOL=λ
export TYPEWRITTEN_CURSOR=block

plugins=(git golang python virtualenv)

source $ZSH/oh-my-zsh.sh

alias zc="nvim ~/.zshrc"
alias omzc="nvim ~/.oh-my-zsh"
alias ic="nvim ~/.config/i3/config"
alias pc="nvim ~/.config/polybar/config"
alias ac="nvim ~/.alacritty.yml"
alias dc="nvim ~/.config/dunst/dunstrc"
alias nc="nvim ~/.config/nvim/init.vim"

alias td="todoist"
alias hk="heroku"

alias pm="python manage.py"

alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

source "/home/glotchimo/go/src/github.com/sachaos/todoist/todoist_functions.sh"
PROG=todoist source "/home/glotchimo/go/src/github.com/urfave/cli/autocomplete/zsh_autocomplete"

rm -rf -- /home/glotchimo/Downloads
rm -rf -- /home/glotchimo/Desktop

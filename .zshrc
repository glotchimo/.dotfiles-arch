export ZSH="/home/glotchimo/.oh-my-zsh"
export PATH=$PATH:$HOME/.local/bin:$HOME/go/bin:$HOME/c++/llvm-project/build/lib:$HOME/.cargo/bin

export EDITOR=nvim

export LLVMROOT=$HOME/c++/llvm-project
export LLVMBIN=$LLVMROOT/build/bin
export LD_LIBRARY_PATH=$LLVMROOT/build/lib

ZSH_THEME="typewritten"
export TYPEWRITTEN_SYMBOL=λ
export TYPEWRITTEN_CURSOR=block
export TYPEWRITTEN_ARROW_SYMBOL=→
export TYPEWRITTEN_PROMPT_LAYOUT="singleline"
export TYPEWRITTEN_DISABLE_RETURN_CODE=true

export SPOTIPY_CLIENT_ID='e719f3d7886a404bb68ca013277a2b78'
export SPOTIPY_CLIENT_SECRET='e719f3d7886a404bb68ca013277a2b78'
export SPOTIPY_REDIRECT_URI='http://127.0.0.1:9090'

NNN_TMPFILE='/tmp/.lastd'

plugins=(git golang python virtualenv)

source $ZSH/oh-my-zsh.sh

n ()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, either remove the "export" as in:
    #    NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    #    (or, to a custom path: NNN_TMPFILE=/tmp/.lastd)
    # or, export NNN_TMPFILE after nnn invocation
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

alias ls="n -de"

alias zc="nvim ~/.zshrc"
alias omzc="nvim ~/.oh-my-zsh"
alias ic="nvim ~/.config/i3/config"
alias pc="nvim ~/.config/polybar/config"
alias ac="nvim ~/.alacritty.yml"
alias dc="nvim ~/.config/dunst/dunstrc"
alias nc="nvim ~/.config/nvim/init.vim"
alias wtfc="nvim ~/.config/wtf/config.yml"

alias td="todoist"
alias hk="heroku"
alias wtf="wtfutil"

alias pm="python manage.py"

alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

function pretty_csv {
    perl -pe 's/((?<=,)|(?<=^)),/ ,/g;' "$@" | column -t -s, | less  -F -S -X -K
}

source "/home/glotchimo/go/src/github.com/sachaos/todoist/todoist_functions.sh"
PROG=todoist source "/home/glotchimo/go/src/github.com/urfave/cli/autocomplete/zsh_autocomplete"

rm -rf -- /home/glotchimo/Downloads
rm -rf -- /home/glotchimo/Desktop

export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export ARCHFLAGS="-arch $(uname -m)"
export PATH=$PATH:/home/luca/.spicetify
export TERMINAL=kitty

ZSH_THEME="robbyrussell"

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(
    git
    # copybuffer
    zoxide
    # zsh-autosuggestions
    # zsh-autocomplete
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Compilation flags

# aliases
alias ls='lsd'
# alias matlab="matlab -webui &"
eval $(thefuck --alias)

mc() {
		matlab -nojvm -batch ${1%.*}
}

mcc() {
		matlab -nojvm -batch "pcode ${1%.*}"
}



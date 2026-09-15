# If not running interactively, don't do anything
[[ $- != *i* ]] && return
HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s checkwinsize
HISTSIZE=1000
HISTFILESIZE=2000

get_git_branch() {
	git_branch=$(git branch 2>/dev/null | grep '^\*' | colrm 1 2 | sed 's/^/ (/' | sed 's/$/)/')
}
PROMPT_COMMAND=get_git_branch
PS1="\[\e[31m\][\[\e[33m\]\u\[\e[32m\]@\[\e[34m\]\h\[\e[0m\]:\[\e[35m\]\w\[\e[36m\]\${git_branch}\[\e[31m\]]\[\e[0m\]\$ \[\033[0m\]"


alias ls=lsd
alias ll='ls -alF'
alias la='la -A'
alias l='ls -CF'
alias grep='grep --color=auto'

alias clip='xclip -selection clipboard'
alias gitlogadog='git log --all --decorate --oneline --graph'

export QSYS_ROOTDIR="/home/luca/.cache/yay/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/25.1/quartus/sopc_builder/bin"

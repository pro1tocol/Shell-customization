export ZSH="$HOME/.oh-my-zsh"
export EDITOR='vim'

#export ZSH=/etc/oh-my-zsh
#export ZSH_CACHE_DIR=~/.oh-my-zsh/cache

ZSH_THEME="shini"

zstyle ':omz:update' mode disabled

alias ls='ls --color=auto'
alias la='ls --color=auto -laAF'

# enable color support of ls, less and man, and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    export LS_COLORS="$LS_COLORS:ow=30;44:" # fix ls color for folders with 777 permissions

    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias diff='diff --color=auto'
    alias ip='ip --color=auto'
    alias cat='ccat'

    export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
    export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
    export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
    export LESS_TERMCAP_so=$'\E[01;33m'    # begin reverse video
    export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
    export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
    export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
fi

plugins=(
        git
	sudo
	command-not-found
	cp
	nmap
	zsh-interactive-cd
	zsh-syntax-highlighting
	zsh-autosuggestions
        )
        
source $ZSH/oh-my-zsh.sh

alias exit='cat /dev/null > ~/.zsh_history && exit'
alias poweroff='cat /dev/null > ~/.zsh_history && poweroff'
alias reboot='cat /dev/null > ~/.zsh_history && reboot'

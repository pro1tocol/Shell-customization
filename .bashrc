if [ -z "$PS1" ]; then
    return
fi
alias ls='ls --color=auto'
alias ll='ls --color=auto -lAF'
alias la='ls --color=auto -laAF'

alias exit='echo "_" > ~/.bash_history && exit'
alias poweroff='echo "_" > ~/.bash_history && poweroff'
alias reboot='echo "_" > ~/.bash_history && reboot'

# PS1='\[\033[01;31m\]\u\[\033[01;33m\]@\[\033[01;36m\]\h \[\033[01;33m\]\w \[\033[01;35m\]\$ \[\033[00m\]'


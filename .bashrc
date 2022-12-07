if [ -z "$PS1" ]; then
    return
fi
alias ls='ls --color=auto'
alias ll='ls --color=auto -lAF'
alias la='ls --color=auto -laAF'

alias exit='history -c && exit'
alias poweroff='history -c && poweroff'
alias reboot='history -c && reboot'

# PS1='\[\033[01;31m\]\u\[\033[01;33m\]@\[\033[01;36m\]\h \[\033[01;33m\]\w \[\033[01;35m\]\$ \[\033[00m\]'


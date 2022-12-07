# Shell-customization-2.2.9

This section is suitable for beautifying the custom zsh environment

--------------------------
## >> Bash

`step 1` environment variable switch

    pacman -S bash bash-completion
    pacman -S curl git
    echo $SHELL
    cat /etc/shells
    chsh -s /bin/bash
`step 2` install [ohmysh](https://github.com/ohmysh/ohmysh)

    curl https://raw.githubusercontent.com/ohmysh/ohmysh/main/install.sh > OMSInstaller.sh
    bash OMSInstaller.sh
    source .bashrc
`step 3` switch themes and plugins

    oms -t list
    oms -t brainy
    
    oms -p list
    oms -p enable <plugin>
    oms -p disable <plugin>
    oms -p restart <plugin>

--------------------------
## >> Zsh

`step 1` environment variable switch

    pacman -S zsh zsh-completions
    echo $SHELL
    cat /etc/shells
    chsh -s /bin/zsh
`step 2` install [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)

    wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
    sh install.sh
`step 3` download themes and plugins

themes: [wiki](https://github.com/ohmyzsh/ohmyzsh/wiki/External-themes)

plugins: 

[Highlight](https://github.com/zsh-users/zsh-syntax-highlighting)  
[Autocomplete](https://github.com/zsh-users/zsh-autosuggestions)

    cd ~/.oh-my-zsh/themes
    yay -S bc
    wget https://raw.githubusercontent.com/ChesterYue/ohmyzsh-theme-passion/master/passion.zsh-theme
    cd ~/.oh-my-zsh/plugins
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
    git clone https://github.com/zsh-users/zsh-autosuggestions
`step 3` deployment configuration

    pacman -S fzf
    cd ~/
    vim .zshrc
    
    ZSH_THEME="passion"
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
    export EDITOR='vim'
    alias cat='ccat'
    
    source .zshrc
--------------------------
# Daily instructions

    cd <address>                 #into the folder
    ls <address or nothing>      #show file list
    pwd                          #show current directory address
    mkdir <folder>               #create folder
    mv <file> <local-address>    #move or rename file
    cp <file> <local-address>    #copy file
    rm <file>                    #delete file
    cat <file>                   #show file content
    wc -l <file>                 #statistical file line count
    head -5 <file>               #show everything before 5 lines
    tail -5 <file>               #show everything after 5 lines
    echo $SHELL                  #output content
    find <file>                  #find file in current directory
    which <file>                 #find qualified files in the $PATH
    whereis <file>               #find file in the entire directory
    df -h                        #show disk usage
    free -h                      #show swap usage
    fdisk -l                     #show zoning


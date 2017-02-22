# remove annoying mail messages
unset MAILCHECK
unset MAIL

# remove apple double files
export COPYFILE_DISABLE=true

# ignore duplicates in history
export HISTCONTROL=ignoreboth:erasedupes

# make colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# show or hide hidden files
alias show='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# empty trash
alias trash='sudo rm -rf ~/.Trash/*'

# directory access shortcuts
alias desk='cd ~/Desktop/'
alias down='cd ~/Downloads/'
alias user='cd ~/'$USERNAME'/'
alias www='cd ~/www/'

# alias for going back
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# alias for listing a directory
alias ll='ls -al -GF'

# open project in atom and start watch
alias ag='atom . && gulp watch'

# alias for git commands
alias gitst='git status'
alias gitsub='git submodule foreach git pull origin master'

# alias for server things
alias getip="ipconfig getifaddr en0"
alias mysqls='mysql.server start'
alias apacher='sudo apachectl graceful'
alias httpd='atom /etc/apache2/httpd.conf'
alias hosts='atom /etc/hosts'
alias vhosts='atom /private/etc/apache2/extra/httpd-vhosts.conf'

source ~/.git-completion.bash
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1="\u@\h:\[$(tput sgr0)\]\[\033[38;5;11m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\$(__git_ps1) \\$ \[$(tput sgr0)\]"

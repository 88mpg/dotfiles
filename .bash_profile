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

# HUM specific
alias hum='cd ~/www/verizon-aem-hum-com/hum/hum.fe.redesign'
alias aem='cd ~/www/verizon-aem-author/author && java -XX:MaxPermSize=256m -Xmx1024M -jar cq6-author-p4502.jar'
alias faq='cd ~/www/verizon-aem-hum-com/hum/ui.content/src/main/content/jcr_root/content/hum/en/faqs/'

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
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[38;5;11m\]\w\\[\033[38;5;15m\]\\n\u\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

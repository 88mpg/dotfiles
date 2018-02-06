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

# convert filenames to lowercase
alias lowercase='for f in *; do mv "$f" "$f.tmp"; mv "$f.tmp" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done'

# convert spaces to underscores
# alias underscore='for file in *; do mv "$file" `echo $file | tr ' ' '_'` ; done'

# empty trash
alias trash='sudo rm -rf ~/.Trash/*'
# delete DS_Store files
alias ds='find . -name '.DS_Store' -type f -delete'

# directory access shortcuts
alias desk='cd ~/Desktop/'
alias down='cd ~/Downloads/'
alias user='cd ~/'$USERNAME'/'
alias www='cd ~/www/'
alias pesonal='cd ~/www/_personal'

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
alias bash="atom ~/.bash_profile"
alias getip="ipconfig getifaddr en0"
alias mysqls='mysql.server start'
alias apacher='sudo apachectl graceful'
alias httpd='atom /etc/apache2/httpd.conf'
alias hosts='atom /etc/hosts'
alias vhosts='atom /private/etc/apache2/extra/httpd-vhosts.conf'

tojpg() {
  sips -Z $1 *.png && for i in *.png; do sips -s format jpeg -s formatOptions 70 "${i}" --out "${i%png}jpg"; done && imagemin *.jpg --out-dir=optimized && rm -r *.jpg
}

mp4() {
  ffmpeg -i $1.mp4 -vcodec h264 -acodec aac $1-optimized.mp4
}

# make directory and cd into it
mkcd() {
  mkdir "$1" && cd "$1";
}

search() {
  find . -type f -name \*.$1 -not -path "*/node_modules/*"
}

source ~/.git-completion.bash
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
GIT_PS1_SHOWDIRTYSTATE=true
export PS1="\[\033[38;5;11m\]\w\\[\033[38;5;15m\]\\n\u\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

#!/bin/bash

# Variables
alias vi='cd ~/Development/wf-project-vi'

########################################
#               STARTUP                #
########################################
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
. ~/.nvm/nvm.sh
cd ~/Development

########################################
#               CUSTOM                #
########################################

# Prettify terminal
export CLICOLOR=1
export TERM=xterm-256color
#export LSCOLORS=GxFxCxDxBxegedabagaced
export LSCOLORS=xffxcxdxbxegedabagacad

#export PS1="\[\033[0;34m\]::\[\e[00m\] "
export PS1="\W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\[\033[0;34m\]::\[\e[00m\] "

# Open common applications
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Git stuff done
alias gs='git status'
alias gb='git branch '
alias gd='git diff '
alias gc='git checkout '
alias gl='git log '
alias grh='git reset HEAD .'
alias inc='git add . ; git commit -m "inc" --no-verify'
alias fetch='git fetch origin master'
alias pull='git pull origin master'
alias fp='git fetch ; git pull'

function gbc {
  git branch $1
  git checkout $1
}

function gsr {
  git reset --soft HEAD~$1
}

# Bash party
alias s='source ~/.bash_profile'
alias ebash='vim ~/.bash_profile'
alias cbash='less ~/.bash_profile'
alias lsa='ls -a'
alias lsltr='ls -ltr'
alias ..='cd ..'

########################################
#               ENV VARS               #
########################################
export PATH=/usr/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


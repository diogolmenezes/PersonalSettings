# Copyright (C) 2014 Diogo Menezes <diogolmenezes@gmail.com>

## import base .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

## PS1
# export PS1="[\$(~/.rvm/bin/rvm-prompt v g)] \w $"

## enable color support
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"
alias ls='ls -Gp'

## default editor
export EDITOR="/usr/local/bin/sublime"

## usefull alias
alias la='ls -lA'
alias top='top -F -R -o cpu'
alias finder="open -a 'finder'"
alias openports='sudo lsof -i -P | grep -i "listen"'
alias reload='source ~/.bash_profile'
alias p='cd ~/Projetos'
alias y='cd ~/Projetos/yourshape/yourshape'

## GIT alias
alias gs='git status'
alias gl='git log'
function gc() {
  git commit -v -a -m "$*"
}

## python
alias manage='python ~/Projetos/$(basename "$VIRTUAL_ENV")/manage.py $1'

## virtualenvwrapper
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh

## loading rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

## loading RVM
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#[[ -s "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion" # Load RVM completion

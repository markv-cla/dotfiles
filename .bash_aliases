#!/usr/bin/env bash

# .bash_aliases

[[ $- == *i* ]] && echo "> ${BASH_SOURCE[0]}"

# User specific aliases and functions
alias listaliases="alias | sed 's/=.*//'"
alias listfunctions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'" # show non _prefixed functions


alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias -- -="cd -"                  # Go to previous dir with -
alias cd.='cd $(readlink -f .)'    # Go to real dir (i.e. if current dir is linked)

alias tree="tree -A"
alias treed="tree -d"
alias tree1="tree -d -L 1"
alias tree2="tree -d -L 2"

#alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ipl="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"

alias quit="exit"
alias week="date +%V"

alias path='echo -e ${PATH//:/\\n}'

alias i='~/bin/ssh_info.sh'
alias r='~/bin/ssh_new_window.sh'
alias s='~/bin/ssh_current_window.sh'
alias t='~/bin/ssh_new_pane.sh'

alias tmux="tmux attach-session -t default || tmux new-session -s default"

[[ $- == *i* ]] && echo "< ${BASH_SOURCE[0]}"

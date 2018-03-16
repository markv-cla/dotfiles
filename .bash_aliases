#!/usr/bin/env bash

# .bash_aliases

[[ $- == *i* ]] && echo "> ${BASH_SOURCE[0]}"

# User specific aliases and functions
alias listaliases="alias | sed 's/=.*//'"
alias listfunctions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'" # show non _prefixed functions

alias rm="rm -v"
alias cp="cp -v"
alias mv="mv -v"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias -- -="cd -"                  # Go to previous dir with -
alias cd.='cd $(readlink -f .)'    # Go to real dir (i.e. if current dir is linked)

alias tree="/usr/bin/tree --charset unicode"
alias treed="/usr/bin/tree --charset unicode -d"
alias tree1="/usr/bin/tree --charset unicode -d -L 1"
alias tree2="/usr/bin/tree --charset unicode -d -L 2"

#alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ipl="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"

alias quit="exit"
alias week="date +%V"

alias pathl='echo -e ${PATH//:/\\n}'

alias sqlite3='sqlite3 -header -column'

alias scp='scp -o "LogLevel=error"'

alias mytmux="/usr/bin/tmux attach-session -t default || /usr/bin/tmux new-session -s default"
alias t='/usr/bin/tmux split-window'
alias r='/usr/bin/tmux new-window'
alias tls="/usr/bin/tmux list-sessions"
alias tks="/usr/bin/tmux kill-session -t"

alias a-pro=""
alias apb="ansible-playbook --private-key ~/.ssh/ansible-id_rsa --user ansible"


[[ $- == *i* ]] && echo "< ${BASH_SOURCE[0]}"

# .bashrc

[[ $- == *i* ]] && echo "> ${BASH_SOURCE[0]}"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# disable auto window naming
DISABLE_AUTO_TITLE="true"
export EDITOR="vim"

# User specific aliases and functions

# .bash_aliases
if [ -e ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# .bash_functions
if [ -e ~/.bash_functions ]; then
	. ~/.bash_functions
fi

# prompt
if [ -e ~/.bash_prompt ]; then
	. ~/.bash_prompt
fi

# tmux bash completions
if [ -e ~/bin/bash_completion_tmux.sh ]; then
	. ~/bin/bash_completion_tmux.sh
fi

# add autocomplete for hosts found in known_hosts file
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" s

# add autocomplete for tmuxp sessions
complete -W "$(for file in ~/.tmuxp/*; do basename ${file%.*}; done)" tmuxp

# other autocompletes
complete -W "+%Y%m%d_%H%M%S +%Y%m%d" date

[[ $- == *i* ]] && echo "< ${BASH_SOURCE[0]}"

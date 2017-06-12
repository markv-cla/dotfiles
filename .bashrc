# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# disable auto window naming
DISABLE_AUTO_TITLE="true"
export EDITOR="vim"

# write bash history out every time we display a prompt
export PROMPT_COMMAND='history -a'

# add timestamp to bash_history
export HISTTIMEFORMAT="%d/%m/%y %T "

# User specific aliases and functions

# .bash_aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# .bash_functions
if [ -f ~/.bash_functions ]; then
	. ~/.bash_functions
fi


# prompt
if [ -f ~/.bash_prompt ]; then
	. ~/.bash_prompt
fi



# add autocomplete for hosts found in known_hosts file
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" r
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" t
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" s



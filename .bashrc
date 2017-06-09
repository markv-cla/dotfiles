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

# User specific aliases and functions

# .bash_aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# .bash_functions
if [ -f ~/.bash_functions ]; then
	. ~/.bash_functions
fi




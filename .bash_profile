# .bash_profile

[[ $- == *i* ]] && echo "> ${BASH_SOURCE[0]}"

# Get the aliases and functions
if [ -e ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

# switch to ~/Documents
#cd ~/Documents


export ANSIBLE_INVENTORY=~/stuff/ansible/inventory

[[ $- == *i* ]] && echo "< ${BASH_SOURCE[0]}"


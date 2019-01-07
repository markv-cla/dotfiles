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

if [[ "${TERM}" == "screen" ]] ; then
  printf "\033k%s\033\\" "$(hostname -s)"
fi

# WSL
if grep -qE "(Microsoft|WSL)" /proc/version &> /dev/null ; then
  umask 022
fi

export ANSIBLE_CONFIG=~/Documents/ansible/ansible.cfg
export ANSIBLE_INVENTORY=~/Documents/ansible/inventory

[[ $- == *i* ]] && echo "< ${BASH_SOURCE[0]}"


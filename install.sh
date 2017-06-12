#!/usr/bin/env bash

DOTFILES=()
DOTFILES+=('.vimrc')
DOTFILES+=('.bash_aliases')
DOTFILES+=('.bash_functions')
DOTFILES+=('.bash_logout')
DOTFILES+=('.bash_profile')
DOTFILES+=('.bashrc')
DOTFILES+=('.tmux.conf')
DOTFILES+=('.bash_prompt')

for DOTFILE in "${DOTFILES[@]}";
do
  ln -sv ~/dotfiles/${DOTFILE} ~
done

# make vimtmp
mkdir -v ~/.vimtmp

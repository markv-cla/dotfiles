#!/usr/bin/env bash

DOTFILES=()
DOTFILES+=('.vimrc')
DOTFILES+=('.bash_aliases')
DOTFILES+=('.bash_functions')
DOTFILES+=('.bash_logout')
DOTFILES+=('.bash_profile')
DOTFILES+=('.bashrc')

for DOTFILE in "${DOTFILES[@]}";
do
  ln -sv ~/dotfiles/${DOTFILE} ~
done

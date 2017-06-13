#!/usr/bin/env bash


DOT_SRC="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export DOT_SRC


DOTFILES=()
# format: "SOURCE|DESTINATION"
DOTFILES+=("${DOT_SRC}/.vimrc|${HOME}/.vimrc")
DOTFILES+=("${DOT_SRC}/.bash_aliases|${HOME}/.bash_aliases")
DOTFILES+=("${DOT_SRC}/.bash_functions|${HOME}/.bash_functions")
DOTFILES+=("${DOT_SRC}/.bash_logout|${HOME}/.bash_logout")
DOTFILES+=("${DOT_SRC}/.bash_profile|${HOME}/.bash_profile")
DOTFILES+=("${DOT_SRC}/.bashrc|${HOME}/.bashrc")
DOTFILES+=("${DOT_SRC}/.tmux.conf|${HOME}/.tmux.conf")
DOTFILES+=("${DOT_SRC}/.bash_prompt|${HOME}/.bash_prompt")

for DOTFILE in "${DOTFILES[@]}";
do

  # split var into SRC/DST
  SRC=${DOTFILE%%|*}
  DST=${DOTFILE##*|}

  # create symlink if it doesnt exist
  if [ -L "${DST}" ]; 
  then
    echo "symlink exists: ${DST}"
  else
    ln -sv "${SRC}" "${DST}"
  fi
done


DIRECTORIES=()
DIRECTORIES+=("${HOME}/.vimtmp")

# create directories if they dont exist
for DIRECTORY in "${DIRECTORIES[@]}";
do
  if [ -d ${DIRECTORY} ]; 
  then
    echo "directory exists: ${DIRECTORY}"
  else 
    mkdir -v ${DIRECTORY}
  fi
done

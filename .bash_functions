#!/usr/bin/env bash

# ~/.bash_functions

[[ $- == *i* ]] && echo "> ${BASH_SOURCE[0]}"

# Create a new directory and enter it
function mcd() {
  mkdir -p "$@" && cd "$_";
}

function r() {
  # start ssh session in new window
  if [ $# -eq 0 ] || [ $# -gt 1 ];
  then
    echo "usage: r [username]@hostname"
    exit
  fi

  input="$*"

  case "$*" in
    *\@*)
      user="${input%%\@*}"
      host="${input##*@}"
      tmux new-window -n "${host}" ssh "${user}@${host}"
      ;;
    *)
      host="${input}"
      tmux new-window -n ${host} ssh "${host}"
  esac
}


function t() {
  #  start ssh session in new split, current window
  if [ $# -eq 0 ] || [ $# -gt 1 ];
  then
    echo "usage: t [username]@hostname"
    exit
  fi

  input="$*"

  case "$*" in
    *\@*)
      user="${input%%\@*}"
      host="${input##*@}"
      tmux split-window ssh "${user}@${host}"
      ;;
    *)
      host="${input}"
      tmux split-window ssh "${host}" && tmux select-layout tiled
  esac
}

function s() {
  #  start ssh session current window (set window title)
  if [ $# -eq 0 ] || [ $# -gt 1 ];
  then
    echo "usage: s [username]@hostname"
    exit
  fi

  input="$*"

  case "$*" in
    *\@*)
      user="${input%%\@*}"
      host="${input##*@}"
      tmux rename-window "${host}"
      ssh "${user}@${host}"
      ;;
    *)
      host="${input}"
      tmux rename-window "${host}"
      ssh "${host}"
  esac
}


colors() {
	echo -e "No Color   \033[0mCOLOR_NC                                         \033[0m"
	echo -e "White      \033[1;37mCOLOR_WHITE                                   \033[0m"
	echo -e "Black      \033[0;30mCOLOR_BLACK                                   \033[0m"
	echo -e "Blue       \033[0;34mCOLOR_BLUE     \033[1;34mCOLOR_LIGHT_BLUE     \033[0m"
	echo -e "Green      \033[0;32mCOLOR_GREEN    \033[1;32mCOLOR_LIGHT_GREEN    \033[0m"
	echo -e "Cyan       \033[0;36mCOLOR_CYAN     \033[1;36mCOLOR_LIGHT_CYAN     \033[0m"
	echo -e "Red        \033[0;31mCOLOR_RED      \033[1;31mCOLOR_LIGHT_RED      \033[0m"
	echo -e "Magenta    \033[0;35mCOLOR_MAGENTA  \033[1;35mCOLOR_LIGHT_MAGENTA  \033[0m"
	echo -e "Yellow     \033[0;33mCOLOR_YELLOW   \033[1;33mCOLOR_LIGHT_YELLOW   \033[0m"
	echo -e "Gray       \033[1;30mCOLOR_GRAY     \033[0;37mCOLOR_LIGHT_GRAY     \033[0m"
}


[[ $- == *i* ]] && echo "< ${BASH_SOURCE[0]}"

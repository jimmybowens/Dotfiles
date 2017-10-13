#!/bin/bash
FILES="$HOME/Dotfiles"/.*
for dotfile in $FILES;do
  if [ -f "$dotfile" ] || [ -d "$dotfile" ];then
    if [ "${dotfile##*.}" == 'git' ];then
      continue
    fi
    ln -s "$dotfile" "$HOME" > /dev/null 2>&1
  fi
done
exit 0

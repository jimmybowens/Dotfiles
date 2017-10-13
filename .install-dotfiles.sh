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
if [ ! -d "$HOME/.vim" ];then
  mkdir -p "$HOME/.vim"
fi
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
exit 0

#!/bin/bash
FILES="$HOME/Dotfiles"/.*
VIMFILES="$HOME/Dotfiles"/*.vim
PLISTFILES="$HOME/Dotfiles"/*.plist

if [ ! -d "$HOME/.vim" ];then
  mkdir -p "$HOME/.vim"
  mkdir -p "$HOME/.vim/ftplugin"
else
  rm -rf "$HOME/.vim"
  mkdir -p "$HOME/.vim"
  mkdir -p "$HOME/.vim/ftplugin"
fi

for dotfile in $FILES;do
  if [ -f "$dotfile" ] || [ -d "$dotfile" ];then
    if [ "${dotfile##*.}" == 'git' ] || [ "${dotfile##*.}" == 'vim' ];then
      continue
    fi
    ln -s "$dotfile" "$HOME" > /dev/null 2>&1
  fi
done

for vimfile in $VIMFILES;do
  if [ -f "$vimfile" ];then
    ln -s "$vimfile" "$HOME/.vim/ftplugin" > /dev/null 2>&1
  fi
done

for plist in $PLISTFILES;do
  if [ -f "$plist" ];then
    ln -s "$plist" "$HOME" > /dev/null 2>&1
  fi
done

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
exit 0

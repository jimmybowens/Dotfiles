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
if [ -d "$HOME/.oh-my-zsh" ];then
  rm -rf "$HOME/.oh-my-zsh"
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
if [ -f "$HOME/.zshrc" ];then
  rm -f "$HOME/.zshrc"
fi
cat << EOF > "$HOME/.zshrc"
export ZSH=/Users/$(whoami)/.oh-my-zsh
ZSH_THEME="darkblood"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR='vim'
export SSH_KEY_PATH="~/.ssh/rsa_id"
EOF
exit 0

#!/usr/bin/env bash

function unlink_file() {
  FILE=~/$1
  BACKUP=$FILE.bak
  rm $FILE
  if [ -e $BACKUP ]; then
    mv $BACKUP $FILE
  fi
}

# Remove rvm
rvm implode

# Reset git 
unlink_file .gitconfig
unlink_file .gitignore_global

rm -rf ~/.bash/git-aware-prompt

# Reset vim
rm -rf ~/.vim/bundle
unlink_file .vimrc

unlink_file .inputrc
unlink_file .bashrc

source ~/.bashrc

echo ">>> Uninstall completed successfully, please restart all your sessions"

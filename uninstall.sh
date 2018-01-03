#!/usr/bin/env bash

# Remove rvm
rvm implode

# Reset git 
rm ~/.gitconfig
GITCONFIGBAK=~/.gitconfig.bak
if [ -e $GITCONFIGBAK ]; then
  mv $GITCONFIGBAK ~/.gitconfig
fi

rm ~/.gitconfig
GITIGNORE_GLOBALBAK=~/.gitignore_global.bak
if [ -e $GITIGNORE_GLOBALBAK ]; then
  mv $GITIGNORE_GLOBALBAK ~/.gitignore_global
fi

rm -rf ~/.bash/git-aware-prompt

# Reset vim
rm -rf ~/.vim/bundle

rm ~/.vimrc
VIMRCBAK=~/.vimrc.bak
if [ -e $VIMRCBAK ]; then
  mv $VIMRCBAK ~/.vimrc
fi

# Remove symlinks .inputrc and .bashrc
rm ~/.inputrc
INPUTRCBAK=~/.inputrc.bak
if [ -e $INPUTRCBAK ]; then
  mv $INPUTRCBAK ~/.inputrc
fi

rm ~/.bashrc
BASHRCBAK=~/.bashrc.bak
if [ -e $BASHRCBAK ]; then
  mv $BASHRCBAK ~/.bashrc
fi

source ~/.bashrc

echo ">>> Uninstall completed successfully, please restart all your sessions"

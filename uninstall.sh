#!/usr/bin/env bash

# ##################################################
# This script uninstalls my development environment
#
version="0.0.1"
#
#
# HISTORY:
#
# * 2017-12-29 - v0.0.1  - Initial release
#
# ##################################################


# Remove rvm
rvm implode

# Reset git 
rm ~/.gitconfig
GITCONFIGBAK=~/.gitconfig.bak
if [ -e $GITCONFIGBAK ]; then
  mv $GITCONFIGBAK ~/.gitconfig
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

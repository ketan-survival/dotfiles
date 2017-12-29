#!/usr/bin/env bash

# ##################################################
# This script sets up my development environment
#
version="0.0.1"
#
#
# HISTORY:
#
# * 2017-12-28 - v0.0.1  - Initial release
#
# ##################################################


# install rvm and the latest ruby
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --ruby

# configure git
GITCONFIG=~/.gitconfig
if [ -e $GITCONFIG ]; then
  mv $GITCONFIG "$GITCONFIG.bak"
fi
ln -s ~/.dotfiles/.gitconfig $GITCONFIG

git clone https://github.com/jimeh/git-aware-prompt.git ~/.bash/git-aware-prompt

# setup vim with plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

VIMRC=~/.vimrc
if [ -e $VIMRC ]; then
  mv $VIMRC "$VIMRC.bak"
fi
ln -s ~/.dotfiles/.vimrc $VIMRC

vim -c 'PluginInstall' -c 'qa!'

# symlink .inputrc and .bashrc
INPUTRC=~/.inputrc
if [ -e $INPUTRC ]; then
  mv $INPUTRC "$INPUTRC.bak"
fi
ln -s ~/.dotfiles/.inputrc $INPUTRC

BASHRC=~/.bashrc
if [ -e $BASHRC ]; then
  mv $BASHRC "$BASHRC.bak"
fi
ln -s ~/.dotfiles/.bashrc $BASHRC

source $BASHRC

echo ">>> Install completed successfully, please restart all your sessions"

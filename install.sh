#!/usr/bin/env bash

function link_file() {
  FILE=$1
  if [ -e ~/$FILE ]; then
    mv ~/$FILE "~/$FILE.bak"
  fi
  ln -s ~/.dotfiles/$FILE ~/$FILE
}

# install rvm and the latest ruby
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --ruby

# configure git
link_file .gitconfig
link_file .gitignore_global
git clone https://github.com/jimeh/git-aware-prompt.git ~/.bash/git-aware-prompt

# setup vim with plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
link_file .vimrc
vim -c 'PluginInstall' -c 'qa!'

link_file .inputrc
link_file .bashrc

source ~/.bashrc

echo ">>> Install completed successfully, please restart all your sessions"

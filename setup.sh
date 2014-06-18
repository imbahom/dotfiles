#!/usr/bin/env sh

git clone https://github.com/gmarik/vundle.git ~/.dotfiles/vim/bundle/vundle
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

chsh -s /bin/zsh

ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim

ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc

echo "Please BundleInstall~~~~~~~~~~~~~~~~~"

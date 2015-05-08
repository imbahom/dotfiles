#!/usr/bin/env sh

git clone https://github.com/gmarik/vundle.git ~/.dotfiles/vim/bundle/vundle
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

chsh -s /bin/zsh

if [ -e ~/.vimrc ]; then
    echo "vimrc already exist"
else
    ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
fi

if [ -e ~/.vim ]; then
    echo "vim folder already exist"
else
    ln -s ~/.dotfiles/vim ~/.vim
fi

if [ -e ~/.zshrc ]; then
    echo "zshrc already exist"
else
    ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
fi

if [ -e ~/.tmux.conf ]; then
    echo "tmux.conf already exist"
else
    ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
fi

if [ -e ~/.proxychains ]; then
    echo ".proxychains folder already exist"
else
    ln -s ~/.dotfiles/proxychains ~/.proxychains
fi

echo "BundleInstall vim plugins"
echo "tmux ==> prefix + I to install plugins that configed in tmux.conf file"
echo "prefix + U to update installed plugins"

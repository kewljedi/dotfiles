#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

os=$(uname -s)
echo "${green}Bootstraping for"
echo ${red}$os
echo "${green}Installing packages${reset}"

git submodule init
git submodule update

if [[ $os == "Linux" ]]; then
    sudo add-apt-repository -y ppa:pi-rho/dev
    sudo apt-get update
    sudo apt-get -y install tmux

    sudo apt-get -y install zsh
fi

if [[ $os == "Darwin" ]]; then
    brew install tmux
    brew install zsh
    brew install coreutils
fi

#tmux setup
echo "${green}Setting up tmux${reset}"
ln -sf ~/dotfiles/.tmux ~/.tmux
ln -sf ~/dotfiles/.tmux/.tmux.conf ~/.tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins
~/.tmux/plugins/tpm/bin/update_plugins all

echo "${green}Setting up zsh${reset}"
ln -sf ~/dotfiles/.zshrc ~/.zshrc

echo "${green}setting up VIM${reset}"
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
vi -c ':PlugInstall' -c ':q' -c ':q'

#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

os=$(uname -s)
echo "${green}Bootstraping for"
echo ${red}$os
echo "${green}Installing packages${reset}"
if [[ $os == "Linux" ]]; then
    sudo apt-get -y install tmux
    sudo apt-get -y install zsh
fi

if [[ $os == "Darwin" ]]; then
    brew install tmux
    brew install zsh
fi

#tmux setup
echo "${green}Setting up tmux${reset}"
ln -s ~/dotfiles/.tmux ~/.tmux
ln -s ~/dotfiles/.tmux/.tmux.conf ~/.tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins
~/.tmux/plugins/tpm/bin/update_plugins all

echo "${green}Setting up zsh${reset}"
ln -s ~/dotfiles/.zshrc ~/.zshrc

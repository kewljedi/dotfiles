#!/bin/bash
ln -s ~/dotfiles/.tmux ~/.tmux
ln -s ~/dotfiles/.tmux/.tmux.conf ~/.tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins
~/.tmux/plugins/tpm/bin/update_plugins all

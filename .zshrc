export ADOTDIR=~/dotfiles/.antigen

source ~/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git

antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle djui/alias-tips

antigen-bundle horosgrisa/autoenv

antigen bundle unixorn/autoupdate-antigen.zshplugin

antigen theme agnoster

antigen apply

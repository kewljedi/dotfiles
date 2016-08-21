export ADOTDIR=~/dotfiles/.antigen

source ~/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git

antigen-bundle hlissner/zsh-autopair

antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle djui/alias-tips

antigen-bundle horosgrisa/autoenv

antigen bundle unixorn/autoupdate-antigen.zshplugin

antigen bundle edouard-lopez/yeoman-zsh-plugin

antigen bundle supercrabtree/k

antigen theme agnoster


if [[ `uname` == 'Linux' ]]
then
    export LINUX=1
    export GNU_USERLAND=1
else
    export LINUX=
fi

if [[ `uname` == 'Darwin' ]]
then
    export OSX=1
else
    export OSX=
fi

# Detect Macports GNU userland installation
if [[ "$OSX" == "1" ]]
then
    if [[ -e /opt/local/libexec/gnubin ]]
    then
        export GNU_USERLAND=1
    fi
else 
    antigen bundle joel-porquet/zsh-dircolors-solarized.git
    setupsolarized dircolors.ansi-dark
fi

antigen apply


alias st="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl -n"
alias gs="grunt serve"
alias resetg="rm -rf node_modules;rm -rf bower_components;rm -rf .tmp;rm -rf dist; rm -rf artifacts;npm install;bower install"
ggs () { cd ~/Documents/STTI/;cd "$*"; cd site }
ba () { grunt build-artifacts;cd artifacts;npm install -production;grunt deploy:"$*" -deploy=true }

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
tmux attach -t init || tmux new -s init

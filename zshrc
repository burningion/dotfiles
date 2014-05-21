ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git pip python node npm)

source $ZSH/oh-my-zsh.sh

export EDITOR=emacs

export GOPATH=~/go
PATH=/usr/local/bin:/usr/local/sbin:/sbin:$PATH
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin:~/.arcanist/arcanist/bin
export NODE_PATH=/usr/local/lib/node_modules
unsetopt inc_append_history
unsetopt share_history # share command history data
alias irc="screen -r irssi || screen -dmS irssi irssi && screen -r irssi"

export TERM="xterm-256color"


ADOTDIR=$HOME/.zsh/antigen
ZSH_CUSTOM=$HOME/.zsh/custom


source $HOME/.zsh/antigen/antigen.zsh
#use selfupdate to update antigen
#and "antigen update" for everything else



export PATH=$HOME/bin:/usr/local/bin:$PATH

# z plugin
export _Z_EXCLUDE_DIRS="/afs,/media,/mnt,/net,/sfs,/tmp,/udev,/var/cache,/var/lib/pacman/local,/var/lock,/var/run,/var/spool,/var/tmp" #to an array of directory trees to exclude.


ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi


#
# manual additions
#
fpath=($HOME/.zsh/custom/funcs $fpath)
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

source $HOME/.zsh/setopt.zsh
source $HOME/.zsh/extras.zsh
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/functions.zsh

autoload $HOME/.zsh/custom/funcs/*(:t)   # not active until called

source $HOME/.homesick/repos/homeshick/homeshick.sh




#
# load oh-my-zsh and everything else
#
antigen-use oh-my-zsh

antigen bundles <<EOBUNDLES
  archlinux
# fbterm
  systemd
  gpg-agent
  z
  cp
  common-aliases
  rsync
  extract
  git
  gitfast
  github
  git-extras
  sublime
  python
  pyenv
  pylint
  pip
  django
  virtualenv
  virtualenvwrapper
# themes
  thefuck
  nmap
  sprunge
  catimg
  nyan
  web-search
  arzzen/calc.plugin.zsh
  simonwhitaker/gibo
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search
  # Guess what to install when running an unknown command.
  #command-not-found
EOBUNDLES

# vimman
#antigen bundle yonchu/vimman
#zstyle ':vimman:' dir ~/.vim/plugged
#zstyle ':vimman:' verbose yes

#if [ "$OSTYPE"="darwin11.0" ]; then
#  antigen-bundle osx
#fi


#awesome theme
source $HOME/.zsh/powerlevel9k.zsh
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen-apply

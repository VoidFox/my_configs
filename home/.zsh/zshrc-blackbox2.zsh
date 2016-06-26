#Download and Source Antigen
#
if [[ ! -e $HOME/.zsh/antigen/antigen.zsh ]]; then
  cd $HOME/.zsh && git clone https://github.com/zsh-users/antigen.git
fi

ADOTDIR=$HOME/.zsh/antigen

source $HOME/.zsh/antigen/antigen.zsh

#use selfupdate to update antigen
#and "antigen update" for everything else



#
# load oh-my-zsh and evertything else
#
antigen-use oh-my-zsh

antigen bundles <<EOBUNDLES
  archlinux
  fbterm
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
  themes
  thefuck
  nmap
  sprunge
  catimg
  nyan
  web-search

  simonwhitaker/gibo
  yonchu/vimman
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search

  # Guess what to install when running an unknown command.
  command-not-found
  # The heroku tool helper plugin.
  heroku
EOBUNDLES

# vimman
zstyle ':vimman:' dir ~/.vim/plugged
zstyle ':vimman:' verbose yes

if [ "$OSTYPE"="darwin11.0" ]; then
  antigen-bundle osx
fi

antigen theme powerlevel9k

antigen-apply


#
# manual additions
#
source $HOME/.zsh/setopt.zsh
source $HOME/.zsh/extras.zsh
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/functions.zsh

autoload $HOME/.zsh/custom/funcs/*(:t)   # not active until called

source $HOME/.homesick/repos/homeshick/homeshick.sh

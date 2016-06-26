#!/bin/zsh
#Download and Source Antigen
#

#install fonts
fc-cache -vf $HOME/.fonts/

#install antigen
if [[ ! -e $HOME/.zsh/antigen/antigen.zsh ]]; then
  cd $HOME/.zsh && git clone https://github.com/zsh-users/antigen.git
fi

#installing homeshick
#git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

mv $HOME/.zshrc $HOME/.zsh/.zshrc.original
echo source $HOME/.zsh/zshrc-blackbox.zsh > $HOME/.zshrc
source $HOME/.zshrc

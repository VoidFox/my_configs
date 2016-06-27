#!/bin/sh

mv $HOME/.zshrc $HOME/.zsh/zshrc.original

# DOWNLOAD GRML´s zsh... MODIFY THE zshrc.local to your liking!!!

wget -O $HOME/.zshrc http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
wget -O $HOME/.zshrc.local  http://git.grml.org/f/grml-etc-core/etc/skel/.zshrc

(echo "";echo "";echo "") >> $HOME/.zshrc.local
echo source $HOME/.zsh/zshrc-dotvoid.zsh >> $HOME/.zshrc.local





##install fonts
fc-cache -vf $HOME/.fonts/

## install antigen
#if [[ ! -e $HOME/.zsh/antigen/antigen.zsh ]]; then
#  cd $HOME/.zsh && git clone https://github.com/zsh-users/antigen.git
#fi

#installing homeshick
#git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick


source $HOME/.zshrc

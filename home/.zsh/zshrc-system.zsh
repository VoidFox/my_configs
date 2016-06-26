export TERM="xterm-256color"


#export _Z_CMD='z' #to change the command name (default z).
#export _Z_DATA='$HOME/.zsh/z/z_data' #to change the datafile (default $HOME/.z).   <<< somehow broken
#export _Z_NO_RESOLVE_SYMLINKS to prevent symlink resolution.
#export _Z_NO_PROMPT_COMMAND to handle PROMPT_COMMAND/precmd yourself.
export _Z_EXCLUDE_DIRS="/afs,/media,/mnt,/net,/sfs,/tmp,/udev,/var/cache,/var/lib/pacman/local,/var/lock,/var/run,/var/spool,/var/tmp" #to an array of directory trees to exclude.
#export _Z_OWNER='$USER' #to allow usage when in 'sudo -s' mode.



# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/
ZSH_CUSTOM=$HOME/.zsh/custom


ZSH_THEME="powerlevel9k"


DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"


# Horrible i know....
plugins=(archlinux fbterm systemd gpg-agent z cp common-aliases rsync extract git gitfast github git-extras sublime python pyenv pylint pip django virtualenv virtualenvwrapper themes thefuck nmap sprunge catimg nyan web-search)
#TODO: tmux tmuxinator

export PATH=$HOME/bin:/usr/local/bin:$PATH


ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi


#
#   load fancy stuff
#

fpath=($HOME/.zsh/custom/funcs $fpath)
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

source $HOME/.zsh/powerlevel9k.zsh
source $ZSH/oh-my-zsh.sh

source $HOME/.zsh/setopt.zsh
source $HOME/.zsh/extras.zsh
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/functions.zsh

#source $HOME/.zsh/custom/plugins/gibo/gibo-completion.zsh

# Read Vim Man Files in Zsh
#source $HOME/.zsh/custom/plugins/vimman/vimman.zsh
#zstyle ':vimman:' dir ~/.vim/plugged
#zstyle ':vimman:' verbose yes

autoload $HOME/.zsh/custom/funcs/*(:t)   # not active until called

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.homesick/repos/homeshick/homeshick.sh

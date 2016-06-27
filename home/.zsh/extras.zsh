# HISTORY
HISTSIZE=10000
SAVEHIST=9000
HIST_STAMPS="dd.mm.yyyy"
HISTFILE=~/.zsh/.zsh_history


# PATTERNS
# rm -rf
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

# Sudo
ZSH_HIGHLIGHT_PATTERNS+=('sudo ' 'fg=white,bold,bg=red')


#export BROWSER="firefox"
#export EDITOR='subl3 -w'
export EDITOR='vim'

export PAGER='less'
export LESS="-RX"

export GREP_COLOR='3;36'
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

export PROJECT_HOME=$HOME/Projekte

# Persistent rehash of $PATH     ---  BEWARE!! DANGEROUS HACK!!!
#zstyle ':completion:*' rehash true

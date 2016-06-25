# Help command
#autoload -Uz run-help
#autoload -Uz run-help-git
#autoload -Uz run-help-svn
#autoload -Uz run-help-svk
#unalias run-help
alias help=run-help


alias h='fc -rl 10000 1' #"history" but reversed..
alias o="xdg-open" #cuz lazy af
alias open="xdg-open"

# alias git=hub
#is-executable hub && eval "$(hub alias -s)"

alias cd..='cd ..'

alias l='ls -lah --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'

alias rm="rm -I"                 # confirm before fucking something up
alias cp="cp -i"
alias mv='mv -i'

alias mkdir='mkdir -p'

alias nano ='vim'

alias du='du -kh'                         # Makes a more readable output.
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias more=less
alias todo='qtodotxt -q'

alias wget='wget -c'

#case-sensitive
alias grep='grep -i'

#alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

#sublime with empty project..
alias st3='subl3 -aw --project $HOME/.config/sublime-text-3/Packages/User/Projects/Standart.sublime-project'

#alias pacman='pacman --color auto'
alias fixpacman='sudo rm -f /var/lib/pacman/db.lck && sudo pacman-mirrors -g && sudo pacman -Syyuu  && sudo pacman -Suu' #unlock data the pacman and update
alias fixpacdata='sudo pacman-optimize && sudo pacman-mirrors -g && sudo pacman -Syyuu  && sudo pacman -Suu' #optimize data the pacman and update

alias usbiso='sudo mkusb' #writes ISO in pendrive: usbiso name.iso
alias wetter='curl http://wttr\.in/fürth'      # wetter = weather in german
alias wetter-erlangen='curl http://wttr\.in/erlangen'
alias wetter-nürnberg='curl http://wttr\.in/nürnberg'

alias tt-cl='tt++ -G -t "Cursed Library" -r $HOME/.tintin/CursedLib.tt'

#debugging
alias debug-reqs='strace -eopen'
alias debug-boot='systemd-analyze plot > /tmp/debug-boot.svg && $BROWSER /tmp/debug-boot.svg && rm -i /tmp/debug-boot.svg'

#imgur.sh uploader
alias imgur='imgur.sh'

# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"

# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"

# Force tmux to use 256 colors
#alias tmux='TERM=screen-256color-bce tmux'

# Handbrake (What the fuck is wrong with you guys?)
alias handbrake='ghb'
alias handbrakecli='HandBrakeCLI'

# su cuz lazy
alias nethogs='sudo nethogs'

# Recursively remove Apple meta files
#alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"
alias cleanupds="find . -type f -name '*.DS_Store' -ls -exec /bin/rm {} \;"
alias cleanupad="find . -type d -name '.AppleD*' -ls -exec /bin/rm -r {} \;"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

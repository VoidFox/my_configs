# Use CTRL+X A to expand them


# Help command
#autoload -Uz run-help
autoload -Uz run-help-git
autoload -Uz run-help-svn
autoload -Uz run-help-svk
#unalias run-help
alias help=run-help


alias h='fc -rl 10000 1' #"history" but reversed..
alias o="xdg-open" #cuz lazy af
alias open="xdg-open"

alias settings="bmenu"

# alias git=hub
compdef g='git'
#is-executable hub && eval "$(hub alias -s)"

alias cd..='cd ..'
alias clr='clear'
alias j='jobs -l'
alias l='ls -lah --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'

# safety nets
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias mkdir='mkdir -p'

alias edit='vim'
alias nano='vim'
alias tmux='wemux s'


alias du="ncdu"
alias duh='du -kh'                         # Makes a more readable output.
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias more=less
alias todo='qtodotxt -q'

alias wget='wget -c'

#case-sensitive
alias grep='grep -i'

#alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

#sublime-text with empty project..
alias st3='subl3 -aw --project $HOME/.config/sublime-text-3/Packages/User/Projects/Standart.sublime-project'

# dotfile management
alias hs='homeshick'
compdef hs='homeshick'

#alias pacman='pacman --color auto'
alias pacman-fix='sudo rm -f /var/lib/pacman/db.lck && sudo pacman-mirrors -g && sudo pacman -Syyuu  && sudo pacman -Suu' #unlock data and update the system
alias pacman-fixdata='sudo pacman-optimize && sudo pacman-mirrors -g && sudo pacman -Syyuu  && sudo pacman -Suu' #optimize data and update

#writes ISO in pendrive: usbiso name.iso
alias usbiso='sudo mkusb'

# Get your current public IP
alias myip="curl icanhazip.com"

# nice weather
alias wetter='curl http://wttr\.in/fürth'      # wetter = weather in german
alias wetter-erlangen='curl http://wttr\.in/erlangen'
alias wetter-nürnberg='curl http://wttr\.in/nürnberg'

# mush game
alias tt-cl='tt++ -G -t "Cursed Library" -r $HOME/.tintin/CursedLib.tt'

#debugging
alias debug-journal='journalctl -xb'
alias debug-boot='systemd-analyze plot > /tmp/debug-boot.svg && $BROWSER /tmp/debug-boot.svg && rm -i /tmp/debug-boot.svg'
alias debug-reqs='strace -eopen'
alias ports='netstat -tulanp'
alias ping1='ping -c1'

###    and a couple more useful cmds to find ports
#lsof -i -n -P
#netstat -ntulp
#ss -tulpa
#netstat -an | grep LISTEN | grep -v ^unix

# to find memory hogs:
alias mem_hogs_top='top -l 1 -o rsize -n 10'
alias mem_hogs_ps='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'

# to find CPU hogs
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

# swapinfo: to display info on swap
alias swapinfo='sysctl vm.swapusage'

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

#imgur.sh uploader
alias imgur='imgur.sh'

#pastebins
#alias sprunge="cat $@ | curl -F 'sprunge=<-' http://sprunge.us"
#alias ix.io="cat $@ | curl -F 'f:1=<-' ix.io"
#alias clbin="cat $@ | curl -F 'clbin=<-' https://clbin.com"

# funstuff
alias future="toilet -t -f future"

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

# easier to remember
alias top10='h10'

# Recursively remove Apple meta files
#alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"
alias cleanupds="find . -type f -name '*.DS_Store' -ls -exec /bin/rm {} \;"
alias cleanupad="find . -type d -name '.AppleD*' -ls -exec /bin/rm -r {} \;"

# trim newlines
#alias tn='tr -d "\n"'

#copy output of last command to clipboard
#alias cl="fc -e -|xclip"
# copy the working directory path
#alias cpwd='pwd|tr -d "\n"|xclip'

# list TODO/FIX lines from the current project
alias todos="ack -n --nogroup '(TODO|FIX(ME)?):'"

# mount... just cleaned up
alias cmount="mount | column -t"

# so cool, much hacker, very wow
alias busy="cat /dev/urandom | hexdump -C | grep "ca fe""

# screen stuff
#alias weechat='screen -R weechat || screen -S weechat weechat'
alias httpd='screen -S http python -m SimpleHTTPServer 8080'

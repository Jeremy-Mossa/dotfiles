# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

PS1="\w --> "

set -o vi

export EDITOR=vim
export VISUAL=vim
#export PATH=$PATH:/home/unix/C
export PATH=$(echo -e ${PATH//\:\/home\/fedora41\/C/})

alias ls='ls -cp --color=auto'
alias ls='ls -cp --color=auto'
alias sl='ls -cp --color=auto'
alias la='ls -acp --color=auto'
alias ldot='ls -d .*'

alias brc='vi ~/.bashrc'
alias src='source ~/.bashrc'

alias c=clear
alias cl="clear; figlet "LINUX" | lolcat -b"

alias install='yes | sudo dnf install'
alias search='dnf search'

alias tasks='vim ~/Documents/tasks.txt'
alias svi='sudo vim'
alias ff="firefox & exit"
alias reboot='sudo reboot'
alias autopush='bash ~/scripts/git-autopush.sh'
alias m=mplayer
alias menu='sudo vi /boot/grub/grub.cfg'
alias lo=libreoffice 
alias off='sudo shutdown -h now'
alias poweroff='sudo poweroff'
alias umount='sudo umount'
alias b='acpi | sed "s/Battery 0: //g"'
alias batt='acpi | sed "s/Battery 0: //g"'
alias du='du -hs'
alias py=python
alias ldev='ls /dev/ | grep sd'
alias lynx='lynx -vikeys'
alias x0='xbacklight -dec 100'
alias phys='epdfview /home/jbm/classes/physics/physics*every*pdf*'
alias keys='vi /home/jbm/.fluxbox/keys'
alias am=alsamixer
alias df='df -h | grep home'
alias ping='ping -c 3 ddg.gg'
alias mupdf="firejail /bin/mupdf"
alias wifi='nmcli dev wifi'
alias lock='xsecurelock 2>/dev/null'
alias free='free -h'
alias mulcon='mullvad connect'
alias rto='rtorrent -n -d ~/Downloads -s ~/Downloads'
alias grep='grep -i'
alias update='sudo dnf update'
alias history='vim ~/.bash_history'
alias path='echo -e ${PATH//:/"\n"} | lolcat'

# :xdigit: for hexidecimal characters
alias macgrep="grep -Eo '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'"
alias ipgrep="grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}'"

ipaddr()
{
  curl -s -o ipaddr -A "Windows NT" https://www.showmyip.com
  grep -E '>City|>Country|>Your IPv4|>Internet' ipaddr |\
  sed 's/<td>//g;s/<\/td>/ /g;s/<b>//g;s/<\/b>//g' |\
  lolcat -g 00FFFF:80FF00 -b
  # removes whitespace
  # sed 's/<td>//g;s/<\/td>/ /g;s/<b>//g;s/<\/b>//g' |\
  # sed 's/^[ \t]*//' | lolcat
  rm ipaddr
}

depsort()
{
	cat ~/Documents/to_install.txt | sort > ~/.dependency
	cat ~/.dependency > ~/Documents/to_install.txt
}

kandr()
{
  # book is 238 pages
  bash ~/scripts/bookview.sh &
  firejail /bin/mupdf -r 125 \
  ~/books/C/C\ Programming\ Language\ 2E\ by\ Ritchie.pdf 27 \
  2>/dev/null & exit 
}

bashbook()
{
  # book is 823 pages
  bash ~/scripts/bookview.sh &
  firejail /bin/mupdf -r 144 \
  ~/books/shell_scripting/LearningBash3E.pdf 581 \
  2>/dev/null & exit
}

docs()
{
	cd ~/Documents
}

scripts()
{
	cd ~/scripts
}

pics()
{
	cd ~/Pictures
}

stor()
{
	cd ~/Storage
}

downloads()
{
	cd ~/Downloads
}

media()
{
        cd /media/
}

xrdb -merge ~/.Xresources 

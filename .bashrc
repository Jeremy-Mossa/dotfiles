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

export EDITOR=vim
export VISUAL=vim
export PATH=$PATH:/home/fedora41/C

alias ls='ls -cp --color=auto'
alias ls='ls -cp --color=auto'
alias sl='ls -cp --color=auto'
alias la='ls -acp --color=auto'
alias ldot='ls -d .*'

alias brc='vi ~/.bashrc'
alias src='source ~/.bashrc'

alias c=clear
alias cl="clear; figlet "LINUX" | lolcat -g 00FFFF:80FF00 -b"

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
alias b=acpi
alias du='du -h'
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
alias lock=xsecurelock
alias free='free -h'
alias mulcon='mullvad connect'
alias rto='rtorrent -n -d ~/Downloads -s ~/Downloads'
alias grep='grep -i'

ipaddr() {
  curl -s -o ipaddr -A "Windows NT" https://www.showmyip.com
  grep -E '>City|>Country|>Your IPv4|>Internet' ipaddr |\
  sed 's/<td>//g;s/<\/td>/ /g;s/<b>//g;s/<\/b>//g' |\
  lolcat -g 00FFFF:80FF00 -b
  # removes whitespace
  # sed 's/<td>//g;s/<\/td>/ /g;s/<b>//g;s/<\/b>//g' |\
  # sed 's/^[ \t]*//' | lolcat
  rm ipaddr
}

depsort() {
	cat ~/Documents/to_install.txt | sort > ~/.dependency
	cat ~/.dependency > ~/Documents/to_install.txt
}

kandr() {
  # book is 238 pages
  firejail /bin/mupdf -r 125 \
  books/C/C\ Programming\ Language\ 2E\ by\ Ritchie.pdf 27 \
  2>/dev/null & exit 
}

bashcookbook() {
  # book is 632 pages
  firejail /bin/mupdf -r 144 \
  ~/books/shell_scripting/Bash_Cookbook.pdf 89 \
  2>/dev/null & exit 
}

docs() {
	cd ~/Documents
}

scripts() {
	cd ~/scripts
}

pics() {
	cd ~/Pictures
}

stor() {
	cd ~/Storage
}

media() {
        cd /media/
}

xrdb -merge ~/.Xresources 

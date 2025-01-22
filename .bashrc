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

#PS1="\w --» "

# Colors for Prompts
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtbrn='\e[0;33m' # Brown
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

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
alias cl="clear; figlet 'bash LINUX GNU'"

alias install='yes | sudo dnf install'
alias search='dnf search'

# get the permissions number from file or folder
# usually 640 for r/w on a file, 755 for dir
alias nperm='stat -c %a'

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
alias mount='sudo mount'
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
alias update='yes | sudo dnf update'
alias upgrade='yes | sudo dnf update'
alias history='vim ~/.bash_history'
alias path='echo -e ${PATH//:/"\n"} | lolcat'
alias histgrep='cat ~/.bash_history | grep'
alias histcat='cat ~/.bash_history' 
alias stmux="tmux new ';' splitw -hf"
alias chargecontrol='echo $(cat /sys/class/power_supply/BAT0/charge_control_end_threshold)%'

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
  ~/books/Computer\ Sci*/Progr*Books/*Ritchie* 27 \
  2>/dev/null & exit 
}

bashbook()
{
  # book is 823 pages
  bash ~/scripts/bookview.sh &
  firejail /bin/mupdf -r 180 \
  ~/books/shell_scripting/Bash\ Shell\ Scripting*.pdf 1 \
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
PS1="\[\033$txtgrn\]\w --» \[\033[0m\]"

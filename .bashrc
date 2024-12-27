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

alias ls='ls -cp --color=auto'
alias ls='ls -cp --color=auto'
alias sl='ls -cp --color=auto'
alias la='ls -acp --color=auto'

alias brc='vi ~/.bashrc'
alias src='source ~/.bashrc'

alias c=clear
alias cl="clear; figlet "LINUX" | lolcat"

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

depsort() {
	cat ~/Documents/to_install.txt | sort > ~/Documents/sorted
	cat ~/Documents/sorted > ~/Documents/to_install.txt
    cp ~/Documents/to_install.txt ~/.dependency
	rm ~/Documents/sorted
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

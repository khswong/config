
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h\W] \$'
#default
PS1='\[\e[0;32m\][\w]\$\[\e[0m\] '
alias e='emacs&'
alias bbunny='irssi -c irc.baconbunny.com -w tu2-et100'
alias vol='alsamixer'
alias wifi='sudo wpa_supplicant -B -iwlp2s0 
-c/etc/wpa_supplicant/wpa_supplicant.conf; sudo dhcpcd'
alias e="emacs -nw" 
alias gogil='ping google.com'
alias search='dmesg | grep'
orphans() {
	if [[ ! -n $(pacman -Qdt) ]]; then
		echo "No orphans to remove."
	else
		sudo pacman -Rns $(pacman -Qdtq)
	fi
}


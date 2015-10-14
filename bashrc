
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h\W] \$'
#default
PS1='\[\e[0;32m\][\w]\$\[\e[0m\] '
alias e='emacs -nwx&'
alias vol='alsamixer'
alias wifi='sudo wpa_supplicant -B -iwlp2s0 
-c/etc/wpa_supplicant/wpa_supplicant.conf; sudo dhcpcd'
alias e="emacs -nw" 
alias gogil='ping google.com'
alias dgrep='dmesg | grep'
alias gpush='git push'
alias gclone='git clone'
alias gcommit='git commit -a -m'
alias gadd='git add *'
orphans() {
	if [[ ! -n $(pacman -Qdt) ]]; then
		echo "No orphans to remove."
	else
		sudo pacman -Rns $(pacman -Qdtq)
	fi
}


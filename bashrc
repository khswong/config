
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h\W] \$'
#default
PS1='\[\e[0;32m\][\w]\$\[\e[0m\] '
alias e='emacs -nw'
alias gogil='ping google.com'

#Arch Only
#orphans() {
#	if [[ ! -n $(pacman -Qdt) ]]; then
#		echo "No orphans to remove."
#	else
#		sudo pacman -Rns $(pacman -Qdtq)
#	fi
#}

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# If logging in on tty1, start X server
#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then 
#	startx
#fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pi_ssh='ssh pi@192.168.103.223 -p 22'
#PS1='[\u@\h \W]\$ '
PS1='\[\033[01;37m\]┌─[\[\033[01;32m\]\u\[\033[01;37m\]@\[\033[01;36m\]\h\[\033[01;37m\]]-[\[\033[01;33m\]\W\[\033[00;37m\]\[\033[01;37m\]]
\[\033[01;37m\]└─[\[\033[05;33m\]$\[\033[00;37m\]\[\033[01;37m\]]\[\033[00;37m\] '
#PS1='\033[32m > '
#PS1='\033[01;32m\u@\h \033[01;34m\w\$\033[0m '
#PS1='┏[\u@\h \w]\n┗╸\$'

#doas() {
#    # This requires persist to be enabled in doas.conf
#    if ! /usr/bin/doas true; then
#        fortune doas 1>&2; false
#    else
#        /usr/bin/doas "$@"
#    fi
#}

#xhost + 2>&1 > /dev/null

if [ -f /etc/bash.command-not-found ]; then
		. /etc/bash.command-not-found
fi

export EDITOR='vim'
export XDG_CONFIG_HOME='/home/raptor8134/.config/'
export PATH="$PATH:/home/raptor8134/scripts/:/home/raptor8134/.local/bin/:/home/raptor8134/.cargo/bin:/home/raptor8134/appnativefy/"
#source /etc/profile.d/emscripten.sh

#alias sudo="doas"
alias entry='vim ~/.journal/"$(date +%m-%d-%Y\(%a\))".txt'
alias dunnet='emacs --batch -l dunnet'
alias ipaddr='nmcli -p device show'
alias cmatrix='cmatrix -bfs'
alias battery='while [ true ]; do printf "\r"; acpi | tr -d "\n"; sleep 1; done'
alias tree='tree -C'
alias formatoff='printf "\033[0m"'
alias status='echo -e "`acpi`\n`date`\n`date +%s`"'
alias status2='clear && while true; do printf %b "`acpi`"   "\n`date`\n`date +%s`" && sleep 1 && printf "\033[0;0H"; done'

alias please='sudo $(fc -ln -1)'


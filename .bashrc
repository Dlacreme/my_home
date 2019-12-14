# .bashrc
 PS1="[\w]"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source ~/.git-prompt.sh
export PS1='\[\033[01;32m\]\u\[\033[0;34m\] [\@] \[\033[00;34m\] \w \[\033[01;34m\]$(__git_ps1)\[\033[01;36m\] \$\[\033[00m\] '

# User specific aliases and functions
alias vi='vim'
alias v='vim'
alias ne='emacs -nw'
alias e='ne'
alias ls='ls --color'
alias us='setxkbmap us'
alias fr='setxkbmap fr'
alias us_i='setxkbmap us -variant alt-intl'
alias xrandr_auto='xrandr --auto'
alias xrandr_left='xrandr --output eDP-1 --left-of HDMI-1'
alias xrandr_right='xrandr --output eDP-1 --right-of HDMI-1'
alias ngl='./node_modules/.bin/ng'
alias xs_size='xrandr --size 1920x1080'
alias x_size='xrandr --size 2560x1440'

export TERM='xterm-256color'
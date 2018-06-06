# .bashrc
 PS1="[\w]"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source ~/.git-prompt.sh

# User specific aliases and functions
alias ne='emacs -nw'
alias e='emacs -nw'
alias cn='rm -f \#*# *~'
alias cno='rm -f \#*# *~ *.o'
alias ns='/home/dlacreme/.nsperl'
alias nasm='nasm -f elf64'
alias sl='ls'
alias gp='g++ -W -Wall -Werror'
alias xampp='/opt/lampp/lampp start'
alias ls='ls --color'
alias v='vim'
alias vi='vim'
alias us='setxkbmap us'
alias fr='setxkbmap fr'
alias us_i='setxkbmap us -variant alt-intl'
alias vga_right='xrandr --output VGA-1 --right-of LVDS-1'
alias vga_left='xrandr --output VGA-1 --left-of LVDS-1'
alias php_log='tail -f /var/log/httpd/error_log'
alias clean_php_log='echo "" > /var/log/httpd/error_log'
alias 3w='cd /var/www/html'
alias ovh='ssh root@vps95998.ovh.net'
alias to_svg='echo autotrace file.jpg --output-file output.svg --output-form svg'
alias node='nodejs'
alias use_rails='rvm use ruby-2.4.1@rails5.1'

export TERM='xterm-256color'
export PS1='\[\033[01;32m\]\u\[\033[0;34m\] [\@] \[\033[00;34m\] \w \[\033[01;34m\]$(__git_ps1)\[\033[01;36m\] \$\[\033[00m\] '

export PATH=$PATH:/home/dlacreme/.cargo/bin

#gogo
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig

export PTOOLSPATH=/home/dlacreme/.app/phalcon-devtools/
export PATH=$PATH:/home/dlacreme/.app/phalcon-devtools

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

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
alias n='nvim'
alias e='ne'
alias ls='ls --color'
alias us='setxkbmap us'
alias fr='setxkbmap fr'
alias us_i='setxkbmap us -variant alt-intl'
alias bat='batcat'
alias c='/usr/bin/cat'
alias x_right='xrandr --output eDP-1 --primary --left-of DP-2'
alias brightness_low='xrandr --output eDP-1 --brightness 0.5'
alias brightness_medium='xrandr --output eDP-1 --brightness 0.7'
alias brightness_high='xrandr --output eDP-1 --brightness 1'
alias openssl-x509-inspect="openssl x509 -noout -text -in"
alias openssl-x509-dates="openssl x509 -noout -dates -in"
alias hosts="sudo vim /etc/hosts"
alias minictl="minikube kubectl --"
openssl-x509-fingerprint() {
  crt=$1
  for format in md5 sha1 sha256 sha512 sha3-256 sha3-512; do
    openssl x509 -noout -$format -fingerprint -in $crt
  done
}

# Export common binary folders
export PATH="$PATH:/$HOME/.local/bin"

# Export specific binaries
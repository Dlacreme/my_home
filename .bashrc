# .bashrc
 PS1="[\w]"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source ~/.git-prompt.sh
export PS1='\[\033[01;32m\]\u\[\033[0;34m\] [\@] \[\033[00;34m\] \w \[\033[01;34m\]$(__git_ps1)\[\033[01;36m\] \$\[\033[00m\] '

# User specific aliases and functions
alias ggraph='git log --oneline --graph --decorate'
alias icl='rlwrap sbcl'
alias vi='vim'
alias v='vim'
alias e='hx -c ~/.config/helix/config.toml'
alias ne='emacs28 -nw'
alias n='nvim'
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
alias killdocker="docker container kill $(docker container ls -q)"
alias minictl="minikube kubectl --"
recent() {
    history | grep --color "$1" | sed 's/^ *[0-9]* *//' | tac | awk '!seen[$0]++' | tac
    #| sed 's/^ *[0-9]* *//'
}
openssl-x509-fingerprint() {
  crt=$1
  for format in md5 sha1 sha256 sha512 sha3-256 sha3-512; do
    openssl x509 -noout -$format -fingerprint -in $crt
  done
}

# Exports
export PATH="$PATH:/$HOME/.local/bin"
# ASDF
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
export PATH=$HOME/.asdf/shims:$PATH

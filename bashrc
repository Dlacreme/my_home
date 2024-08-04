# .bashrc
 PS1="[\w]"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source ~/.git-prompt.sh
source /usr/share/git/completion/git-completion.bash

export PS1='\[\033[01;32m\]\u\[\033[0;34m\] [\@] \[\033[00;34m\] \w \[\033[01;34m\]$(__git_ps1)\[\033[01;36m\] \$\[\033[00m\] '

alias ggraph='git log --oneline --graph --decorate'
alias icl='rlwrap sbcl'
alias v='nvim'
alias e='emacs -nw'
alias ls='ls --color'
alias bat='batcat'
alias c='bat'
alias hosts="sudo vim /etc/hosts"
alias brightness_low='xrandr --output eDP-1 --brightness 0.5'
alias brightness_medium='xrandr --output eDP-1 --brightness 0.7'
alias brightness_high='xrandr --output eDP-1 --brightness 1'
alias openssl-x509-inspect="openssl x509 -noout -text -in"
alias openssl-x509-dates="openssl x509 -noout -dates -in"
alias minictl="minikube kubectl --"

openssl-x509-fingerprint() {
  crt=$1
  for format in md5 sha1 sha256 sha512 sha3-256 sha3-512; do
    openssl x509 -noout -$format -fingerprint -in $crt
  done
}

recent() {
    history | grep --color "$1" | sed 's/^ *[0-9]* *//' | tac | awk '!seen[$0]++' | tac
    #| sed 's/^ *[0-9]* *//'
}

# Exports
export PATH="$PATH:/$HOME/.local/bin"


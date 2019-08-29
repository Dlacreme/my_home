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
alias 3w='cd /var/www/html'
alias b_scan='hcitool scan'
alias xrandr_auto='xrandr --auto'
alias xrandr_left='xrandr --output eDP-1-1 --left-of DP-1-3'
alias xrandr_right='xrandr --output eDP-1-1 --right-of DP-1-3'
alias ngl='./node_modules/.bin/ng'
alias run_anbox='anbox launch --package=org.anbox.appmgr --component=org.anbox.appmgr.AppViewActivity'
alias r_anbox='ANBOX_LOG_LEVEL=debug anbox session-manager --single-window'
alias r_citra='flatpak run org.citra.citra-canary'

export TERM='xterm-256color'

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$HOME/.npm/bin"
export PATH=~/.local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="(which vboxmanage):$PATH"


[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/dlacreme/work/souqalmal/car-insurance-app/node_modules/tabtab/.completions/serverless.bash ] && . /home/dlacreme/work/souqalmal/car-insurance-app/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/dlacreme/work/souqalmal/car-insurance-app/node_modules/tabtab/.completions/sls.bash ] && . /home/dlacreme/work/souqalmal/car-insurance-app/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /home/dlacreme/work/souqalmal/car-insurance-app/node_modules/tabtab/.completions/slss.bash ] && . /home/dlacreme/work/souqalmal/car-insurance-app/node_modules/tabtab/.completions/slss.bash

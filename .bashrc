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
alias xrandr_left='xrandr --output eDP-1-1 --left-of DP-1-3'
alias xrandr_right='xrandr --output eDP-1-1 --right-of DP-1-3'

export TERM='xterm-256color'

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export PATH="$PATH:$HOME/.npm/bin"
export PATH=~/.local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/dlacreme/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /home/dlacreme/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/dlacreme/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /home/dlacreme/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /home/dlacreme/souqalmal/home-insurance-app/node_modules/tabtab/.completions/slss.bash ] && . /home/dlacreme/souqalmal/home-insurance-app/node_modules/tabtab/.completions/slss.bash
export PATH="/home/dlacreme/.nvm/versions/node/v10.6.0/bin:/home/dlacreme/.cargo/bin:/home/dlacreme/.local/bin:/home/dlacreme/.rbenv/plugins/ruby-build/bin:/home/dlacreme/.rbenv/shims:/home/dlacreme/.rbenv/bin:/home/dlacreme/.cargo/bin:/home/dlacreme/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin:/usr/local/go/bin:/home/dlacreme/.npm/bin:/home/dlacreme/.vimpkg/bin"

export PATH="/home/dlacreme/.nvm/versions/node/v10.6.0/bin:/home/dlacreme/.cargo/bin:/home/dlacreme/.local/bin:/home/dlacreme/.rbenv/plugins/ruby-build/bin:/home/dlacreme/.rbenv/shims:/home/dlacreme/.rbenv/bin:/home/dlacreme/.cargo/bin:/home/dlacreme/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin:/usr/local/go/bin:/home/dlacreme/.npm/bin:/home/dlacreme/.vimpkg/bin:/home/dlacreme/.vimpkg/bin"

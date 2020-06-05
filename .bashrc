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
alias v='nvim'
alias ne='emacs -nw'
alias e='ne'
alias ls='ls --color'
alias us='setxkbmap us'
alias fr='setxkbmap fr'
alias us_i='setxkbmap us -variant alt-intl'
alias xrandr_auto='xrandr --auto'
alias xrandr_left='xrandr --output eDP1 --left-of HDMI1'
alias xrandr_right='xrandr --output eDP1 --right-of HDMI1'
alias ngl='./node_modules/.bin/ng'
alias xs_size='xrandr --size 1920x1080'
alias x_size='xrandr --size 2560x1440'
alias brightness_low='sudo tee /sys/class/backlight/intel_backlight/brightness <<< 5000'
alias brightness_medium='sudo tee /sys/class/backlight/intel_backlight/brightness <<< 12000'
alias brightness_high='sudo tee /sys/class/backlight/intel_backlight/brightness <<< 24242'
alias pop='/home/dlacreme/.apps/popcorntime/Popcorn-Time&'
alias emule='~/Android/Sdk/emulator/emulator -avd Pixel_2_API_29'

export TERM='xterm-256color'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

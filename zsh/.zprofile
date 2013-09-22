#### Mac specific config
export TERM=xterm-color
export CLICOLOR=true
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

#### General prefs
# tail color
ct() {
tail -f $1 | perl -pe 's/(\[|\]|com\.[\w\.]+ )/\e[1;36;40m$&\e[0m/g' 
}

# grep colors
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;37;44'

# navigation aliases
alias ll='ls -al'
alias lt='ls -ltr'
alias lcd='source ~/bin/lcd.sh'
alias lc='tree -L 2'

# tmux stuff
alias splitd='tmux split-window -d' 
alias splith='tmux split-window -h' 

source ~/.host-specific-config.zsh

# vim: filetype=sh
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -f "$HOME/.profile" ]] && source "$HOME/.profile"

export TERM=xterm-256color
export TERMINAL=st
export EDITOR=vim
export BROWSER=qutebrowser
export DC=dmd

alias ls='ls --color=auto'
#color ls

eval `dircolors /usr/share/dircolors/dircolors.256dark`
PS1='[\u@\h \W]\$ '

set -o vi                # vi command line editing
shopt -s direxpand       # expand directory variables with <TAB> after /
export GREP_COLOR='1;32' # green grep result highlight
stty -ixon               # don't let <c-s> stop vim

#pass tab completion
source /usr/share/bash-completion/completions/pass

# colored man pages
man () {
  env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;231;48;5;18m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

#gpg-agent
GPG_TTY=$(tty)
export GPG_TTY
if [ -f "{$HOME}/.gpg-agent-info" ]; then
  . "{$HOME}/.gpg-agent-info"
  export GPG_AGENT_INFO
  export SSH_AUTH_SOCK
fi

alias op="xdg-open"
#alias make="colormake"
alias mntusb="sudo mount -o umask=0,uid=$USER,gid=$USER"
# top level of git project
alias gitop='cd "$(git rev-parse --show-toplevel)"'
# clipboard paste
alias cpaste='xclip -out -sel clip'

# rbenv
if hash rbenv 2>/dev/null; then
  eval "$(rbenv init -)"
fi
# system gems
export PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"   #system gems

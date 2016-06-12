# vim: filetype=sh
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -f "$HOME/.profile" ]] && source "$HOME/.profile"

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

# Start the gpg-agent if not already running
if ! pgrep -x -u "${USER}" gpg-agent >/dev/null 2>&1; then
    gpg-connect-agent /bye >/dev/null 2>&1
fi

# Set SSH to use gpg-agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    export SSH_AUTH_SOCK="${HOME}/.gnupg/S.gpg-agent.ssh"
fi

# Set GPG TTY
GPG_TTY=$(tty)
export GPG_TTY

# Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent updatestartuptty /bye >/dev/null

alias op="xdg-open"
#alias make="colormake"
alias mntusb="sudo mount -o umask=0,uid=$USER,gid=$USER"
# backup password store
alias oldpass='PASSWORD_STORE_DIR=~/.password-store.old/ pass'

up() {
    local p=
    for i in $(seq 1 $1)
    do
        p+=../
    done
    cd "$p"
}

# system gems
export PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"   #system gems

# rbenv
eval "$(rbenv init -)"

# home bin folder
[[ -d "$HOME/bin" ]] && export PATH="$PATH:$HOME/bin"

# use `j` to jump to commonly used directories
[ -f /etc/profile.d/autojump.bash ] && . /etc/profile.d/autojump.bash

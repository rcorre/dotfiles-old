# vim: filetype=sh
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export TERMINAL=st
export EDITOR=nvim
export BROWSER=qutebrowser
export HISTSIZE=10000
export HISTCONTROL=erasedups
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export XDG_DESKTOP_DIR="$HOME"
export FZF_DEFAULT_COMMAND='fd --hidden --no-ignore-vcs --type l --type f --ignore-file ~/dotfiles/fdignore'
export FZF_DEFAULT_OPTS="--bind 'ctrl-y:execute(echo {} | xclip -r -sel clip)+abort'"

# colors and prompt
alias ls='ls --color=auto'
alias l='ls -ltr'
[[ -f ~/dotfiles/dircolors.256dark ]] && eval `dircolors ~/dotfiles/dircolors.256dark`
PS1='[\u@\h \W]\$ '

set -o vi                # vi command line editing
shopt -s direxpand       # expand directory variables with <TAB> after /
export GREP_COLOR='1;32' # green grep result highlight
stty -ixon               # don't let <c-s> stop vim

# fzf
[[ -f /usr/share/fzf/completion.bash ]] && . /usr/share/fzf/completion.bash
[[ -f /usr/share/fzf/key-bindings.bash ]] && . /usr/share/fzf/key-bindings.bash

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

# Maintain a single ssh-agent across shells
if ! pgrep -u $USER ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
    # don't print the PID to every new terminal
    sed -i '/echo Agent pid/d' ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval $(<~/.ssh-agent-thing)
fi

alias op="xdg-open"
alias mntusb="sudo mount -o umask=0,uid=$USER,gid=$USER"
alias ledger=hledger
alias ldg='hledger -f ~/ledger/accounts.dat'
alias vim=nvim
alias vims='nvim -S'
alias lag="ag --pager='less -r'"
alias clin='xclip -in -sel clip'
alias clout='xclip -out -sel clip'

up() {
    local p=
    for i in $(seq 1 $1)
    do
        p+=../
    done
    cd "$p"
}

[[ -d "$HOME/bin" ]] && export PATH="$PATH:$HOME/bin"

[ -f /etc/profile.d/autojump.bash ] && . /etc/profile.d/autojump.bash

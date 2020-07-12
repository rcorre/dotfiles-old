# vim: filetype=sh
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export TERMINAL=st
export EDITOR=nvim
export BROWSER=qutebrowser
export HISTSIZE=50000
export HISTCONTROL=erasedups
export XDG_DESKTOP_DIR="$HOME"
export FZF_DEFAULT_COMMAND='fd --hidden --no-ignore-vcs --type l --type f --ignore-file ~/dotfiles/fdignore'
export RIPGREP_CONFIG_PATH="$HOME/dotfiles/ripgreprc"

# colors and prompt
alias ls='ls --color=auto'
alias l='ls -ltrh'
[[ -f ~/dotfiles/dircolors.256dark ]] && eval `dircolors ~/dotfiles/dircolors.256dark`
PS1='[\u@\h \W]\$ '

set -o vi                # vi command line editing
shopt -s direxpand       # expand directory variables with <TAB> after /
shopt -s histappend      # append to history, dont overwrite
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
alias vim=nvim
alias vims='nvim -S'
alias ag="rg"
alias ci='xclip -in -sel clip'
alias co='xclip -out -sel clip'
alias cg='cd $(git rev-parse --show-toplevel)'

up() {
    local p=
    for i in $(seq 1 $1)
    do
        p+=../
    done
    cd "$p"
}

[[ -d "$HOME/bin" ]] && export PATH="$PATH:$HOME/bin"

command -v fasd >/dev/null 2>&1 && eval "$(fasd --init auto)"
[ -f /opt/asdf-vm/asdf.sh ] && . /opt/asdf-vm/asdf.sh
alias j=z
alias ag=rg
export TERM=xterm-256color

#!/bin/sh

# directory where my dotfiles repo is cloned to
DOTFILES_DIR="$HOME/dotfiles"

# abort script on first failure
set -e

# set up dotfiles submodule
cd $DOTFILES_DIR
git submodule update --init

# set up home directory
cd $HOME

# common directories
mkdir "project"
mkdir "documents"
mkdir "downloads"

# links to shared dotfiles
ln -s "$DOTFILES_DIR/.vimrc"            .vimrc
ln -s "$DOTFILES_DIR/.gvimrc"           .gvimrc
ln -s "$DOTFILES_DIR/.bashrc"           .bashrc
ln -s "$DOTFILES_DIR/.taskrc"           .taskrc
ln -s "$DOTFILES_DIR/.inputrc"          .inputrc
ln -s "$DOTFILES_DIR/.mbsyncrc"         .mbsyncrc
ln -s "$DOTFILES_DIR/.gitconfig"        .gitconfig
ln -s "$DOTFILES_DIR/.gitignore-global" .gitignore

# keyboard remapping
xmodmap -pke > "$HOME/.Xmodmap"
cat "$DOTFILES_DIR/.Xmodmap" >> "$HOME/.Xmodmap"

# dotfiles that live in ~/.config
mkdir -p "$HOME/.config"
cd       "$HOME/.config"

# awesome
ln -s "$DOTFILES_DIR/config/awesome" .

# qutebrowser
cd "$HOME/.config/qutebrowser"
ln -s "$DOTFILES_DIR/config/qutebrowser/qutebrowser.conf" .

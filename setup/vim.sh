#!/bin/sh

# directory where my dotfiles repo is cloned to
DOTFILES_DIR="$HOME/dotfiles"

# where to clone Vundle (vim package manager) from
VUNDLE_URL="https://github.com/gmarik/Vundle.vim.git"

# abort script on first failure
set -e

# set up links in
mkdir "$HOME/.vim"
cd "$HOME/.vim"

ln -s "$DOTFILES_DIR/ftplugin"    .
ln -s "$DOTFILES_DIR/plugin"      .
ln -s "$DOTFILES_DIR/after"       .
ln -s "$DOTFILES_DIR/CustomSnips" .

# clone vundle
mkdir bundle
git clone $VUNDLE_URL "$HOME/.vim/bundle/Vundle.vim"

# install plugins
vim +PluginInstall +qall

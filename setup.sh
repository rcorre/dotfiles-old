#!/bin/sh

cd "$HOME"
ln -siv "$HOME/dotfiles/.??*" .

cd "$HOME/.config"
ln -siv "$HOME/dotfiles/config/*" .

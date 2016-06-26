#!/bin/bash
set -e

# Clean up targets
rm -rf $HOME/.config/nvim* $HOME/.zsh* $HOME/.tmux* $HOME/.gitconfig $HOME/.i3*

# Make subdirs
mkdir -p $HOME/.config/nvim
mkdir $HOME/.i3

# Symlink dotfiles
# ln -s $PWD/config/zsh $HOME/.zshrc  # (still) using bash atm
ln -s $PWD/config/tmux $HOME/.tmux.conf
ln -s $PWD/config/neovim $HOME/.config/nvim/init.vim
ln -s $PWD/config/gitconfig $HOME/.gitconfig
ln -s $PWD/config/tern-config $HOME/.tern-config
ln -s $PWD/config/i3 $HOME/.i3/config

# Install font with extra nerd- and powerline-symbol support
mkdir -p $HOME/.fonts/Library/U
ln -s $PWD/fonts/UbuntuMonoDerivativePowerlineNerdFontComplete.ttf $HOME/.fonts/Library/U/Ubuntu\ Ubuntu\ Mono\ derivative\ Powerline\ Nerd\ Font\ Complete\ Mono.ttf
fc-cache -f -v

# Fix CTRL-H
ln -s $PWD/xterm-256color.ti $HOME/xterm-256color.ti

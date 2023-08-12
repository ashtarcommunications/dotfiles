#!/usr/bin/env bash

# Start install
echo "Installing dotfiles..."

# Get current directory so we can run it from anywhere
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update current repo first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Create symlinks
echo "Creating symlinks..."
ln -sfv "$DOTFILES_DIR/bash/bash_profile" ~/.bash_profile
ln -sfv "$DOTFILES_DIR/bash/bashrc" ~/.bashrc
ln -sfv "$DOTFILES_DIR/git/gitconfig" ~/.gitconfig
ln -sfv "$DOTFILES_DIR/git/gitignore" ~/.gitignore_global
ln -sfv "$DOTFILES_DIR/javascript/jshintrc" ~/.jshintrc
ln -sfv "$DOTFILES_DIR/vim/vimrc" ~/.vimrc
mkdir -p ~/.vim/colors
ln -sfv "$DOTFILES_DIR/vim/vim/colors/solarized.vim" ~/.vim/colors/solarized.vim
mkdir -p ~/.vim/autoload
ln -sfv "$DOTFILES_DIR/vim/vim/autoload/plug.vim" ~/.vim/autoload/plug.vim

# Install KDE profile
konsave -i ~/.dotfiles/kde/hardy.knsv

echo "Finished installing!"

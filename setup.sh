#!/bin/bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
CONFIG_HOME="$HOME/.config"

[ -d "$CONFIG_HOME" ] || mkdir $CONFIG_HOME
ln -snf $BASE_DIR/bashrc $HOME/.bashrc
ln -snf $BASE_DIR/zshrc $HOME/.zshrc
ln -snf $BASE_DIR/inputrc $HOME/.inputrc
ln -snf $BASE_DIR/brewfile $HOME/.Brewfile
ln -snf $BASE_DIR/.config/nvim $CONFIG_HOME/nvim
ln -snf $BASE_DIR/.config/starship/starship.toml $CONFIG_HOME/starship.toml
ln -snf $BASE_DIR/.config/lazygit $CONFIG_HOME/lazygit
ln -snf $BASE_DIR/.config/mise $CONFIG_HOME/mise
ln -snf $BASE_DIR/.config/kitty $CONFIG_HOME/kitty
ln -snf $BASE_DIR/.config/tmux $CONFIG_HOME/tmux
ln -snf $BASE_DIR/gitconfig $HOME/.gitconfig

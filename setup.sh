#!/bin/bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
CONFIG_HOME="$HOME/.config"

[ -d "$CONFIG_HOME" ] || mkdir $CONFIG_HOME
ln -snf $BASE_DIR/bashrc $HOME/.bashrc && source $HOME/.bashrc
ln -snf $BASE_DIR/inputrc $HOME/.inputrc
ln -snf $BASE_DIR/.config/nvim $CONFIG_HOME/nvim
ln -snf $BASE_DIR/.config/starship/starship.toml $CONFIG_HOME/starship.toml
ln -snf $BASE_DIR/.config/zellij $CONFIG_HOME/zellij
ln -snf $BASE_DIR/.config/alacritty $CONFIG_HOME/alacritty
ln -snf $BASE_DIR/.config/lazygit $CONFIG_HOME/lazygit
ln -snf $BASE_DIR/.config/mise $CONFIG_HOME/mise

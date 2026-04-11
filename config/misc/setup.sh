#!/usr/bin/env bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

ln -snf ${BASE_DIR}/.zshrc ${HOME}/.zshrc
ln -snf ${BASE_DIR}/.gitconfig ${HOME}/.gitconfig
ln -snf ${BASE_DIR}/.aerospace.toml ${HOME}/.aerospace.toml
ln -snf ${BASE_DIR}/.vimrc ${HOME}/.vimrc

brew bundle --file=${BASE_DIR}/brewfile
echo "Miscellaneous installed"

#!/usr/bin/env bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

if ! command -v kitty >/dev/null 2>&1; then
  brew install kitty
fi

[ -d "${HOME}/.config/kitty" ] || mkdir ${HOME}/.config/kitty
ln -snf ${BASE_DIR}/* ${HOME}/.config/kitty

echo "Kitty installed"

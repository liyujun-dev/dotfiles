#!/usr/bin/env bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

if ! command -v lazygit >/dev/null 2>&1; then
  brew install lazygit
fi

[ -d "${HOME}/.config/lazygit" ] || mkdir ${HOME}/.config/lazygit
ln -snf ${BASE_DIR}/* ${HOME}/.config/lazygit

echo "Lazygit installed"

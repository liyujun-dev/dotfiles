#!/usr/bin/env bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

if ! command -v starship >/dev/null 2>&1; then
  brew install starship
fi

[ -d "${HOME}/.config" ] || mkdir ${HOME}/.config
ln -snf ${BASE_DIR}/starship.toml ${HOME}/.config/starship.toml

echo "Starship installed"

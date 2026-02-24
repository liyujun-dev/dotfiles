#!/usr/bin/env bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

if ! command -v mise >/dev/null 2>&1; then
  brew install mise
fi

[ -d "${HOME}/.config/mise" ] || mkdir ${HOME}/.config/mise
ln -snf ${BASE_DIR}/config.toml ${HOME}/.config/mise

echo "Mise installed"

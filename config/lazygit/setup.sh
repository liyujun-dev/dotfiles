#!/usr/bin/env bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

if ! command -v lazygit >/dev/null 2>&1; then
  brew install lazygit
fi

ln -snf ${BASE_DIR}/config.yml "${HOME}/Library/Application Support/lazygit/config.yml"

echo "Lazygit installed"

#!/usr/bin/env bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

if ! command -v opencode >/dev/null 2>&1; then
  brew install anomalyco/tap/opencode
fi

[ -d "${HOME}/.config/opencode" ] || mkdir ${HOME}/.config/opencode
ln -snf ${BASE_DIR}/opencode.jsonc ${HOME}/.config/opencode/opencode.jsonc

echo "Opencode installed"

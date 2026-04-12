#!/usr/bin/env bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
CONFIG_HOME="$HOME/.config"

# Initialization
[ -d "${CONFIG_HOME}" ] || mkdir ${CONFIG_HOME}
if [ ! command -v brew >/dev/null 2>&1 ]; then
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "Homebrew Installed"
fi

# Setup
sh ${BASE_DIR}/config/starship/setup.sh
sh ${BASE_DIR}/config/kitty/setup.sh
sh ${BASE_DIR}/config/mise/setup.sh
sh ${BASE_DIR}/config/lazygit/setup.sh
sh ${BASE_DIR}/config/macos/setup.sh
sh ${BASE_DIR}/config/misc/setup.sh

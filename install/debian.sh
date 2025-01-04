#!/bin/bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

. $BASE_DIR/utils.sh

sudo apt-get update
sudo apt-get install curl git -y

# Reference: https://github.com/neovim/neovim/blob/master/BUILD.md
cmd_exists nvim || {
  sudo apt install ninja-build gettext cmake unzip build-essential -y
  git clone --depth=1 git@github.com:neovim/neovim /tmp/neovim
  cd /tmp/neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo && sudo make install && rm -rf /tmp/neovim
  cd $BASE_DIR
}

# Reference: https://mise.jdx.dev/getting-started.html#_1-install-mise-cli
cmd_exists mise || curl https://mise.run | sh

# Reference: https://github.com/jesseduffield/lazygit#ubuntu
cmd_exists lazygit || {
  LAZYGIT_VERSION="0.44.1"
  curl -Lo /tmp/lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
  tar xf /tmp/lazygit.tar.gz -C /tmp/lazygit
  sudo install /tmp/lazygit -D -t /usr/local/bin/
  rm -rf /tmp/lazygit.tar.gz
}

cmd_exists zellij || {
  ZELLIJ_VERSION="0.41.2"
  curl -Lo /tmp/zellij.tar.gz "https://github.com/zellij-org/zellij/releases/download/v${ZELLIJ_VERSION}/zellij-x86_64-unknown-linux-musl.tar.gz"
  tar xf /tmp/zellij.tar.gz -C /tmp/
  sudo install /tmp/zellij -D -t /usr/local/bin/
  rm -rf /tmp/zellij.tar.gz
}

# Reference: https://starship.rs/guide/
cmd_exists starship || curl -sS https://starship.rs/install.sh | sh

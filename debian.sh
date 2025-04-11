#!/bin/bash

install_neovim() {
  command -v nvim >/dev/null 2>&1 || {
    echo "Installing NeoVIM"
    sudo apt-get install ninja-build gettext cmake curl build-essential -y
    git clone --depth=1 git@github.com:neovim/neovim.git /tmp/neovim && cd /tmp/neovim
    make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install
    echo "NeoVIM Installed"
  }
}

install_tmux() {
  command -v tmux >/dev/null 2>&1 || {
    echo "Installing TMUX"
    sudo apt-get install tmux -y
    echo "TMUX Installed"
  }
}

install_lazygit() {
  command -v lazygit >/dev/null 2>&1 || {
    echo "Installing Lazygit"
    LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
    curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
    tar xf lazygit.tar.gz lazygit
    sudo install lazygit -D -t /usr/local/bin/
    echo "Lazygit Installed"
  }
}

install_mise() {
  command -v mise >/dev/null 2>&1 || {
    echo "Installing MISE"
    curl https://mise.run | sh
    echo "MISE Installed"
  }
}

install_starship() {
  command -v starship >/dev/null 2>&1 || {
    echo "Installing Starship"
    curl -sS https://starship.rs/install.sh | sh -s -- -y
    echo "Starship Installed"
  }
}

install_neovim
install_tmux
install_lazygit
install_mise
install_starship

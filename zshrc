# .zshrc

# ENV
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_PIP_INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple"

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Brew
eval "$(/opt/homebrew/bin/brew shellenv)"
# Starship
eval "$(starship init zsh)"
# Mise
eval "$(mise activate zsh)"

# Alias
alias vi="nvim"
alias ..="cd .."
alias l="eza --icons --sort Name"
alias lt="l -T -L 2 -a --git-ignore -I .git"
alias la="l -a"
alias ll="l -l --time-style long-iso"
alias lla="ll -a"
alias lg="lazygit"
alias k="kubectl"
alias icat="kitten icat"
[ "$TERM_PROGRAM" != "vscode" ] && eval "$(zellij setup --generate-auto-start zsh)"

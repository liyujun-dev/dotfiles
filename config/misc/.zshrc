# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Alias
alias l="eza --icons --sort Name"
alias lt="l -T -L 2 -a --git-ignore -I .git"
alias la="l -a"
alias ll="l -l --time-style long-iso"
alias lla="ll -a"
alias lg="lazygit"
alias k="kubectl"
alias icat="kitten icat"
alias vi="vim"

eval "$(/opt/homebrew/bin/brew shellenv)"
command_exists "starship" && eval "$(starship init zsh)"
command_exists "mise" && eval "$(mise activate zsh)"

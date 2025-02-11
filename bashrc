if [ -x "$(command -v tmux)" ] && [ -z "${TMUX}" ]; then
    exec tmux new-session -A -s ${USER} >/dev/null 2>&1
fi

alias vi="nvim"
alias lg="lazygit"

eval "$(~/.local/bin/mise activate bash)"
eval "$(starship init bash)"

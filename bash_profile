export BAT_THEME=Coldark-Dark
export EDITOR=/usr/bin/vim
export GOPATH="${HOME}/go"
export HISTCONTROL=ignoreboth
export PATH="${GOPATH}/bin:${PATH}"

[[ -x /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
[[ -r "${HOME}/.bashrc" ]] && source "${HOME}/.bashrc"

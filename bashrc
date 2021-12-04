builtin type -P starship &> /dev/null && eval "$(starship init bash)"

batdiff() {
    (cd -- "$(git rev-parse --show-toplevel)" && \
     git diff --name-only --diff-filter=d | xargs bat --diff)
}

sshagent() {
    local config_dir="${HOME}/.config"
    mkdir -p "${config_dir}"
    local pid_file="${config_dir}/ssh-agent.pid"
    touch "${pid_file}"

    if [ -z "${SSH_AGENT_PID}" ]; then
        SSH_AGENT_PID=$(cat "${pid_file}")
    fi

    export SSH_AGENT_PID
    export SSH_AUTH_SOCK="${config_dir}/ssh-agent.sock"

    if ! kill -0 "${SSH_AGENT_PID}" &> /dev/null; then
        rm -f "${SSH_AUTH_SOCK}"
        eval "$(ssh-agent -s -a "${SSH_AUTH_SOCK}")"
        echo "${SSH_AGENT_PID}" > "${pid_file}"
        APPLE_SSH_ADD_BEHAVIOR=1 ssh-add -A
    fi
}

sshagent

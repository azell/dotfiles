builtin type -P starship &> /dev/null && eval "$(starship init bash)"

batdiff() {
    toplevel="$(git rev-parse --show-toplevel)"
    (cd "${toplevel}"; git diff --name-only --diff-filter=d | xargs bat --diff)
}

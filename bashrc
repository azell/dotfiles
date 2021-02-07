builtin type -P starship &> /dev/null && eval "$(starship init bash)"

batdiff() {
  git diff --name-only --diff-filter=d | xargs bat --diff
}

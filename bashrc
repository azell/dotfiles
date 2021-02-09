builtin type -P starship &> /dev/null && eval "$(starship init bash)"

batdiff() {
  cd "$(git rev-parse --show-toplevel)"
  git diff --name-only --diff-filter=d | xargs bat --diff
}

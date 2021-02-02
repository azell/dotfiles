export BAT_THEME="Monokai Extended Bright"
export EDITOR=/usr/bin/vim
export HISTCONTROL=ignoreboth:erasedups
export PATH="${PATH}:${HOME}/bin:/usr/local/sbin"
# export HOMEBREW_GITHUB_API_TOKEN=

# /usr/libexec/java_home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home
# export JAVA_HOME="${HOME}/.sdkman/candidates/java/11.0.8-amzn"

[[ -r "${HOME}/.bashrc" ]] && source "${HOME}/.bashrc"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/adamzell/.sdkman"
[[ -s "/Users/adamzell/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/adamzell/.sdkman/bin/sdkman-init.sh"


### Using fpath ###
# homebrew
if type brew &>/dev/null
then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

### Load fpath ###
autoload -Uz compinit
compinit -u

### Using Compdef ###
# fzf
function completion_fzf() {
    [[ $(command -v fzf) ]] && source <(fzf --zsh)
}

# Load Angular CLI autocompletion.
function completion_ng() {
    [[ $(command -v ng) ]] && source <(ng completion script)
}

# Load docker autocompletion.
function completion_docker() {
    [[ $(command -v docker) ]] && source <(docker completion zsh)
}
compdef completion_docker

# Load Kubernetes autocompletion.
function completion_kubectl() {
    [[ $(command -v kubectl) ]] && source <(kubectl completion zsh)
}
compdef completion_kubectl kubectl


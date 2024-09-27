
# starship
[[ -x /opt/homebrew/bin/starship ]] && eval "$(starship init zsh)"

### ZSH CONFIGURATION ###
if [[ -d "$HOME/scripts" ]]; then
    for script in $HOME/scripts/*; do
        [[ -x $script ]] && source $script
    done
fi



### COMPLETION ###

# homebrew
function completion_brew() {
    if type brew &>/dev/null
    then
        FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
        autoload -Uz compinit
        compinit
    fi
}

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
completion_docker

# Load Kubernetes autocompletion.
function completion_kubectl() {
    [[ $(command -v kubectl) ]] && source <(kubectl completion zsh)
}
completion_kubectl


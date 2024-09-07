eval "$(/opt/homebrew/bin/brew shellenv)"

export EDITOR="nvim"

# dotnet
export DOTNET_ROOT="$HOME/dotnet"
export PATH="$PATH:$HOME/dotnet"
export PATH="$PATH:$HOME/.dotnet/tools"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("$HOME/miniconda3/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$PATH:$HOME/miniconda3/bin"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# rclone
export PATH="$PATH:$HOME/rclone"

# Added by Toolbox App
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

# flutter
export PATH="$PATH:$HOME/.pub-cache/bin"

# jdk
export JAVA_HOME="/Library/Java/JavaVirtualMachines/oracle-jdk-21.0.3"
export PATH="$PATH:/Library/Java/JavaVirtualMachines/oracle-jdk-21.0.3/bin"
export CPPFLAGS="-I/Library/Java/JavaVirtualMachines/oracle-jdk-21.0.3/include"

# fzf
source <(fzf --zsh)

# personal scripts
export PATH="$PATH:$HOME/scripts"

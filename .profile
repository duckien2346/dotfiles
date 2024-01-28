
eval "$(/opt/homebrew/bin/brew shellenv)"

export EDITOR=nvim

# dotnet
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet
export PATH=$PATH:$HOME/.dotnet/tools

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/kien/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/kien/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/kien/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/kien/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# rclone
export PATH=$PATH:$HOME/rclone

# Added by Toolbox App
export PATH="$PATH:/Users/kien/Library/Application Support/JetBrains/Toolbox/scripts"


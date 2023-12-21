
# alias
# alias ls='ls --color=auto'
# alias ll='ls -alF'
# alias la='ls -A'
# alias sudo='sudo -E -s'

# Variables
export EDITOR=nvim
export LEARNING=/run/media/learning
export SHARING=/run/media/sharing

# export PATH="$PATH:/home/uit/.dotnet/tools"
export PATH="$PATH:/home/uit/.local/share/JetBrains/Toolbox/scripts"
export PATH="$PATH:/home/uit/.local/share/dbeaver"
export PATH="$PATH:/home/uit/.local/share/Postman/app"
export PATH="$PATH:/home/uit/.config/tmux"

. "$HOME/.cargo/env"

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi


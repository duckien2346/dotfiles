#!/usr/bin/env bash

alias mpv-playlist="ls *.{mp4,mkv} | sort -V | mpv --playlist=-"
alias v="vim"

alias grep='grep --color=auto'
alias ls='ls --color=always'
alias ld='ls -l | grep "^d" | grep -v "total"'
alias lf='ls -lp --color=always | grep -v "^d" | grep -v "total"'
alias lh='ls -ld .*'
alias ll='ls -lA | grep "^d" | grep -v "total" && ls -la | grep -v "^d" | grep -v "total"'
if [ "$(command -v eza)" ]; then
    alias ld='eza -lD --show-symlinks'
    alias lf='eza -lf --show-symlinks'
    alias lh='eza -dl .* --group-directories-first'
    alias ll='eza -la --group-directories-first'
    alias mpv-playlist="eza --no-quotes *.{mp4,mkv} | mpv --playlist=-"
fi

# Tools
[[ $(command -v nvim) ]] && alias v='nvim'
[[ $(command -v colima) ]] && alias c='colima'
[[ $(command -v docker) ]] && alias d='docker'
[[ $(command -v kubectl) ]] && alias k='kubectl'
[[ $(command -v helm) ]] && alias h='helm'
[[ $(command -v vifm) ]] && alias vf='vifm .'
[[ $(command -v python3) ]] && alias p='python3'
[[ $(command -v pip3) ]] && alias pi='pip3'
[[ $(command -v webtorrent) ]] && alias tor=torrent torrent='webtorrent --not-on-top --mpv $(pbpaste)'
[[ $(command -v yazi) ]] && alias y=yazi
[[ $(command -v toipe) ]] && alias t='toipe --wordlist top2500'
[[ $(command -v cursor) ]] && alias cur=cursor
[[ $(command -v claude) ]] && alias cla=claude
[[ $(command -v opencode) ]] && alias op=opencode
[[ $(command -v aria2c) ]] && alias a=aria2c


# zsh-completions
[ ! -d "$ZSH/zsh-completions" ] && git clone https://github.com/zsh-users/zsh-completions $ZSH/zsh-completions
fpath=($ZSH/zsh-completions $fpath)

# zsh-autosuggestions
[ ! -d "$ZSH/zsh-autosuggestions" ] && git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/zsh-autosuggestions
source $ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-nvm
[ ! -d "$ZSH/zsh-nvm" ] && git clone https://github.com/lukechilds/zsh-nvm.git $ZSH/zsh-nvm
NVM_COMPLETION=true
NVM_LAZY_LOAD=true
source $ZSH/zsh-nvm/zsh-nvm.plugin.zsh

# zsh-syntax-highlighting (must be last)
[ ! -d "$ZSH/zsh-syntax-highlighting" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH/zsh-syntax-highlighting
source $ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


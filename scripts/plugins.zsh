
# zsh-completions
[ ! -d "$ZSH/zsh-completions" ] && git clone https://github.com/zsh-users/zsh-completions $ZSH/zsh-completions
fpath=($ZSH/zsh-completions $fpath)

# zsh-autosuggestions
[ ! -d "$ZSH/zsh-autosuggestions" ] && git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/zsh-autosuggestions
fpath=($ZSH/zsh-autosuggestions $fpath)
source $ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-nvm
[ ! -d "$ZSH/zsh-nvm" ] && git clone https://github.com/lukechilds/zsh-nvm.git $ZSH/zsh-nvm
fpath=($ZSH/zsh-nvm $fpath)
NVM_COMPLETION=true
NVM_LAZY_LOAD=true
source $ZSH/zsh-nvm/zsh-nvm.plugin.zsh

# zsh-syntax-highlighting (must be last)
[ ! -d "$ZSH/zsh-syntax-highlighting" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH/zsh-syntax-highlighting
fpath=($ZSH/zsh-syntax-highlighting $fpath)
source $ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


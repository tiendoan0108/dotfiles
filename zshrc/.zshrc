if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export EDITOR="nvim"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion


# Starship configuration
eval "$(starship init zsh)"

# opencode
export PATH=/home/tiendvd/.opencode/bin:$PATH

# Golang binary
export PATH="$PATH:/usr/local/go/bin"
export PATH="$HOME/go/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"

# opencode
export PATH="/Users/tiendvd/.opencode/bin:$PATH"

# Cargo rust
export PATH="$HOME/.cargo/bin:$PATH"

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/tiendvd/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# bun completions
[ -s "/Users/tiendvd/.bun/_bun" ] && source "/Users/tiendvd/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Shopify Hydrogen alias to local projects
alias h2='$(npm prefix -s)/node_modules/.bin/shopify hydrogen'

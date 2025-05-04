# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set the theme to powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins to load (completions, git helpers, etc.)
plugins=(
    git
    z
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Aliases básicos
alias ll='ls -la'
alias gs='git status'
alias gp='git push'
alias gc='git commit'
alias updatebrew='brew update && brew upgrade && brew cleanup'

# Node y NVM si los querés usar
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"

# Agregar paths custom si querés
export PATH="/usr/local/bin:$PATH"

# Powerlevel10k instant prompt para mayor velocidad
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

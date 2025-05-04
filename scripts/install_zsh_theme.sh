#!/bin/bash
# 7. Instalar fuente Nerd para Powerlevel10k
echo "🔤 Instalando fuente Hack Nerd Font..."
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# 8. Instalar Powerlevel10k
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
    echo "🎨 Instalando tema Powerlevel10k..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
    "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
else
    echo "✅ Powerlevel10k ya estaba instalado."
fi
#!/bin/bash

set -e  # Termina si algún comando falla

echo "🚀 Iniciando configuración de Mac..."

# 1. Instalar Homebrew si no está
if ! command -v brew &> /dev/null
then
    echo "🍺 Instalando Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Configurar PATH para Apple Silicon
    if [[ $(uname -m) == 'arm64' ]]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi

    echo "✅ Homebrew instalado."
else
    echo "✅ Homebrew ya estaba instalado."
fi

# 2. Actualizar Homebrew
echo "🔄 Actualizando Homebrew..."
brew update

# 3. Instalar Oh My Zsh si no está
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "⚡ Instalando Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "✅ Oh My Zsh ya estaba instalado."
fi

# 4. Configurar .zshrc base
if [ -f "$HOME/.zshrc" ]; then
    echo "📋 Agregando alias y configuraciones al .zshrc..."
    cat <<EOF >> "$HOME/.zshrc"
EOF
fi

# 5. Configuraciones custom de Git
echo "🔧 Configurando Git..."
cp dotfiles/.gitconfig ~/.gitconfig

# 6. Alias básicos para Zsh
echo "🔌 Agregando alias básicos..."
cp dotfiles/.zsh_aliases ~/
echo "source ~/.zsh_aliases" >> ~/.zshrc

# 7. Instalación desde Brewfile
if [ -f "../Brewfile" ]; then
echo "📦 Instalando paquetes y apps desde Brewfile..."
brew bundle --file="../Brewfile"
else
echo "⚠️ Brewfile no encontrado. Skipping bundle."
fi

echo "🎉 Configuración de Mac completada exitosamente."
#!/bin/bash

# Instalar Homebrew si no está instalado
if ! command -v brew &> /dev/null
then
    echo "🍺 Homebrew no está instalado. Instalándolo ahora..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # Agregar brew al PATH para Apple Silicon
    if [[ $(uname -m) == 'arm64' ]]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi

    echo "✅ Homebrew instalado correctamente."
else
    echo "✅ Homebrew ya está instalado."
fi

# Actualizar Homebrew
echo "🔄 Actualizando Homebrew..."
brew update

# Instalar paquetes básicos
echo "📦 Instalando paquetes esenciales..."
brew install git wget htop


echo "🎉 Instalación completa. Tu Mac ya tiene las herramientas básicas listas."
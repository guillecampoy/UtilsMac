#!/bin/bash
set -e

echo "🚀 Iniciando configuración de Pop!_OS..."

# Actualizar e instalar paquetes base
sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl wget apt-transport-https ca-certificates \
    gnupg software-properties-common python3 python3-pip

# VSCode
if ! command -v code >/dev/null; then
    echo "⚙️  Instalando Visual Studio Code..."
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | \
        sudo tee /usr/share/keyrings/packages.microsoft.gpg > /dev/null
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/packages.microsoft.gpg] \
        https://packages.microsoft.com/repos/code stable main" | \
        sudo tee /etc/apt/sources.list.d/vscode.list
    sudo apt update
    sudo apt install -y code
fi

# KeepassXC y Syncthing
sudo apt install -y keepassxc syncthing

# Docker
sudo apt install -y docker.io docker-compose
sudo systemctl enable --now docker

# sdkman y Java
if [ ! -d "$HOME/.sdkman" ]; then
    curl -s "https://get.sdkman.io" | bash
    source "$HOME/.sdkman/bin/sdkman-init.sh"
else
    source "$HOME/.sdkman/bin/sdkman-init.sh"
fi
sdk install java

# Spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo gpg --dearmor -o /usr/share/keyrings/spotify.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/spotify.gpg] \
    http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install -y spotify-client

# Extras opcionales
sudo apt install -y gnome-tweaks flameshot gimp obs-studio

# Editor por defecto del sistema
sudo update-alternatives --set editor /usr/bin/code

# Editor de Git en consola
git config --global core.editor "nano"

echo "🎉 Configuración de Pop!_OS completada."

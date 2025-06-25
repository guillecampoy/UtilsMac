#!/bin/bash
# Se utiliza versión antigua de bash, por defecto de sistemas OS X
# This script uninstalls the app by removing the app directory and its contents.

# Verifica que hayas pasado un argumento
if [ -z "$1" ]; then
    echo "Uso: $0 NombreDeLaApp"
    exit 1
fi

APP_NAME="$1"
APP_PATH="/Applications/${APP_NAME}.app"

# Verificar si la app existe
if [ ! -d "$APP_PATH" ]; then
    echo "Error: La aplicación no existe en /Applications."
    exit 1
fi

# Buscar el real Bundle Identifier
BUNDLE_ID=$(mdls -name kMDItemCFBundleIdentifier -raw "$APP_PATH")

# Si no encuentra el bundle ID, usar nombre de la app
if [ "$BUNDLE_ID" == "(null)" ] || [ -z "$BUNDLE_ID" ]; then
    echo "No se pudo detectar automáticamente el Bundle ID."
    echo "Usando nombre de la app como aproximación."
    # Bash 3.x (por defecto en macOS) no soporta la expansión "${var,,}".
    # Utilizamos tr para convertir el nombre a minúsculas de forma compatible.
    BUNDLE_ID="com.$(echo "$APP_NAME" | tr '[:upper:]' '[:lower:]')"
fi

echo "Desinstalando $APP_NAME..."
echo "Bundle ID detectado: $BUNDLE_ID"

# 1. Borrar el .app principal
sudo rm -rf "$APP_PATH"

# 2. Borrar preferencias
rm -f "$HOME/Library/Preferences/${BUNDLE_ID}.plist"

# 3. Borrar Application Support
rm -rf "$HOME/Library/Application Support/${APP_NAME}"

# 4. Borrar Caches
rm -rf "$HOME/Library/Caches/${BUNDLE_ID}"

# 5. Borrar Containers
rm -rf "$HOME/Library/Containers/${BUNDLE_ID}"

# 6. Borrar Logs
rm -rf "$HOME/Library/Logs/${APP_NAME}"

echo "✅ Proceso de desinstalación completado."

# 🛠️ UtilsMac
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

Colección personal de **scripts**, **dotfiles** y **configuraciones** para preparar equipos Mac y Linux de manera rápida y profesional.
Ideal para **reinstalaciones limpias**, **nuevos equipos** o simplemente para mejorar tu flujo de trabajo diario.

---

## 📦 Contenido del proyecto

| Carpeta/Archivo | Descripción |
|:---|:---|
| `scripts/` | Scripts de instalación, configuración y desinstalación. |
| `dotfiles/` | Alias de terminal, configuraciones de Git, configuraciones de Zsh. |
| `configs/` | Configuraciones específicas de aplicaciones (por ejemplo, VSCode). |
| `Brewfile` | Lista de paquetes Homebrew para instalación masiva. |
| `CHEATSHEET.md` | Tabla rápida de alias y comandos útiles. |

---

## 🚀 Instalación rápida

### 1. Clonar el repositorio

```bash
git clone https://github.com/guillecampoy/UtilsMac.git
cd UtilsMac
```

### 2. MacOS

```bash
cd scripts
./setup_mac.sh
```

### 3. Pop!_OS (o derivados Debian)

```bash
cd scripts
./setup_linux.sh
```

## 📄 Licencia

Distribuido bajo la licencia [MIT](LICENSE).

---

## 🛠 Requisitos

Este proyecto está pensado para quienes prefieren configurar y usar Git y su entorno de desarrollo desde la terminal.

- 🧰 Requiere tener instalado:
  - Git
  - Zsh (recomendado sobre Bash)
  - GitHub CLI (`gh`) → para aprovechar los comandos personalizados opcionales

### 📦 Instalación del GitHub CLI

Si no tenés `gh` instalado, podés instalarlo en MacOS vía Homebrew:

```bash
brew install gh
```

## ✏️ Editor por defecto

El setup fija **VSCode** como editor general del sistema. Para Git se mantiene
un editor de consola (nano), por lo que al editar un commit se abrirá en la
terminal.

>**UtilsMac** nació entre terminales, scripts y buenos mates, para que cada equipo nuevo esté listo en minutos.  
Código libre, espíritu libre. 🚀🧉
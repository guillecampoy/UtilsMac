# 🤝 Guía de Contribución a UtilsMac

¡Gracias por tu interés en contribuir a **UtilsMac**!  
Este proyecto busca ser una colección de scripts, configuraciones y utilidades útiles para usuarios de MacOS.

Por favor, seguí estas pautas para mantener el proyecto claro, funcional y bien organizado.

---

## 📋 Reglas básicas

- **Comunicarse de manera respetuosa y constructiva.**
- **Mantener el estilo de scripts existente.**
- **Comentar el código cuando sea necesario.**
- **Seguir la estructura del proyecto**: `scripts/`, `dotfiles/`, `configs/`, etc.

---

## 🚀 Cómo contribuir

1. **Fork** este repositorio.
2. **Crea una nueva rama** para tu cambio.
   ```bash
   git checkout -b nombre-de-tu-rama

## 📝 Convenciones para commits (sugeridas)

Usá mensajes de commit claros y atómicos.  
Formato recomendado (pero no obligatorio):

### Tipos comunes:
- `add:` algo nuevo (script, alias, config)
- `fix:` corrección de algo roto
- `update:` mejora o cambio en algo ya existente
- `docs:` cambios en documentación
- `refactor:` reestructura sin cambiar comportamiento
- `chore:` tareas menores (borrar archivos, renombrar, etc.)

**Ejemplos:**
- `add: script de backup de configuraciones`
- `fix: error al desinstalar apps con espacios`
- `update: instalación de powerlevel10k en setup_mac.sh`

### 🛡️ Validación opcional de commits

Si querés usar validación automática de mensajes de commit localmente:

```bash
cp hooks/commit-msg.example .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg
```

### 🧉 Sobre el uso de Git

Este proyecto está pensado para quienes trabajan desde consola, con Git puro.

Si usas herramientas vizuales, reforzamos algunas normas:
- Está bien, mientras respetes el formato de commits (`add:`, `fix:`, etc.)
- Mantené los PRs simples y atómicos
- Asegurate de seguir las plantillas al abrir Issues y PRs

En resumen: usá lo que quieras, pero hacelo prolijo 😉
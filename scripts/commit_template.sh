#!/bin/bash

# ─────────────────────────────
# Commit asistido (interactivo)
# Uso: gh cm   → si definís el alias
# ─────────────────────────────

echo "📌 Tipos de cambio sugeridos:"
echo "  add       → algo nuevo (script, alias, config)"
echo "  fix       → corrección de error"
echo "  update    → mejora de algo existente"
echo "  docs      → cambios en documentación"
echo "  chore     → tareas menores"
echo "  refactor  → reestructura sin cambios funcionales"
echo

read -p "📝 Tipo: " tipo
read -p "📋 Descripción corta (imperativo, ej: agrega script...): " descripcion
read -p "🧾 Descripción extendida (opcional): " extra

# Armado del mensaje
mensaje="$tipo: $descripcion"
[ -n "$extra" ] && mensaje="$mensaje\n\n$extra"

echo
echo "🧪 Commit generado:"
echo "--------------------"
echo -e "$mensaje"
echo "--------------------"

read -p "¿Confirmar y commitear? (y/n): " confirm

if [[ "$confirm" == "y" ]]; then
git commit -m "$tipo: $descripcion" -m "$extra"
echo "✅ Commit creado."
else
echo "❌ Commit cancelado."
fi
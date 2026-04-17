#!/bin/bash

# Script para hacer push a GitHub

echo "🚀 Cobranding Logo Generator - GitHub Push"
echo "=========================================="
echo ""

# Verificar que estamos en un repositorio git
if [ ! -d .git ]; then
    echo "❌ Error: No estamos en un repositorio git"
    exit 1
fi

echo "✓ Repositorio git detectado"
echo ""

# Configurar el remote
echo "📌 Configurando remote de GitHub..."
git remote add origin https://github.com/jota-erre-coto/Cobranding-logo-generator.git 2>/dev/null || echo "⚠️  Remote ya existe, saltando..."

# Cambiar a rama main
echo "🔀 Cambiando a rama 'main'..."
git branch -M main

# Hacer push
echo "📤 Haciendo push a GitHub..."
echo ""
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ ¡Push completado exitosamente!"
    echo ""
    echo "Tu repositorio está disponible en:"
    echo "https://github.com/jota-erre-coto/Cobranding-logo-generator"
else
    echo ""
    echo "❌ Error al hacer push. Verifica:"
    echo "   - Tu conexión a internet"
    echo "   - Tus credenciales de GitHub"
    echo "   - Que hayas creado el repositorio en GitHub"
fi

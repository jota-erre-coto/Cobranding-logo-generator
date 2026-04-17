#!/bin/bash

echo "🔐 GitHub Push - Configuración con Token Personal"
echo "=================================================="
echo ""
echo "Necesitas tu Personal Access Token de GitHub para hacer push."
echo "Cómo obtenerlo:"
echo "  1. Ve a https://github.com/settings/tokens"
echo "  2. Click en 'Generate new token (classic)'"
echo "  3. Dale permisos en 'repo' (full control of private repositories)"
echo "  4. Copia el token"
echo ""
read -sp "Ingresa tu GitHub Personal Access Token: " TOKEN
echo ""
echo ""

if [ -z "$TOKEN" ]; then
    echo "❌ Token no proporcionado"
    exit 1
fi

cd "$(dirname "$0")"

echo "🔄 Configurando credenciales de git..."
git config --local user.name "Claude"
git config --local user.email "claude@anthropic.com"

echo "📤 Haciendo push a GitHub..."
echo ""

# Usar el token en la URL
git push -u https://"$TOKEN"@github.com/jota-erre-coto/Cobranding-logo-generator.git main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ ¡Push completado exitosamente!"
    echo ""
    echo "Tu repositorio está en:"
    echo "https://github.com/jota-erre-coto/Cobranding-logo-generator"
else
    echo ""
    echo "❌ Error al hacer push. Verifica:"
    echo "   - Que el token sea válido"
    echo "   - Que tengas conexión a internet"
fi

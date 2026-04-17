#!/bin/bash

echo "🚀 Cobranding Logo Generator - Deploy a Vercel"
echo "=============================================="
echo ""
echo "Este script desplegará tu aplicación en Vercel"
echo ""

# Verificar que npx está disponible
if ! command -v npx &> /dev/null; then
    echo "❌ Error: Node.js/npm no está instalado"
    echo "Instálalo desde: https://nodejs.org/"
    exit 1
fi

echo "✓ Node.js/npm detectado"
echo ""

# Opción 1: Usar Vercel CLI con autenticación por navegador
echo "🔓 Hay dos formas de autenticarse en Vercel:"
echo ""
echo "1️⃣  A través del navegador (más fácil)"
echo "2️⃣  Con token de Vercel"
echo ""
read -p "Elige opción (1 o 2): " AUTH_METHOD

if [ "$AUTH_METHOD" == "1" ]; then
    echo ""
    echo "⏳ Se abrirá tu navegador para autenticarte en Vercel..."
    echo ""
    npx vercel deploy --prod

elif [ "$AUTH_METHOD" == "2" ]; then
    echo ""
    read -sp "Ingresa tu Vercel API Token: " VERCEL_TOKEN
    echo ""
    echo ""

    if [ -z "$VERCEL_TOKEN" ]; then
        echo "❌ Token no proporcionado"
        exit 1
    fi

    export VERCEL_TOKEN="$VERCEL_TOKEN"
    npx vercel deploy --prod --token "$VERCEL_TOKEN"
else
    echo "❌ Opción inválida"
    exit 1
fi

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ ¡Deploy completado exitosamente!"
    echo ""
    echo "🌐 Tu aplicación está disponible en Vercel"
    echo ""
    echo "Para ver el dashboard:"
    echo "https://vercel.com/dashboard"
else
    echo ""
    echo "❌ Error en el deploy. Verifica:"
    echo "   - Que estés autenticado en Vercel"
    echo "   - Que tengas conexión a internet"
    echo "   - Que tu token sea válido (si usaste la opción 2)"
fi

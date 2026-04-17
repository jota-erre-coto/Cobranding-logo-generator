# 🚀 Cómo hacer Push a GitHub

El repositorio está **completamente listo y committeado**, pero necesita tus credenciales de GitHub para hacer push.

## ⚡ Opción Más Rápida (Recomendada)

### 1. Obtén tu Personal Access Token

Ve a: https://github.com/settings/tokens/new

- Nombre: `cobranding-push`
- Expiration: 30 days (o lo que prefieras)
- Scopes: Selecciona `repo` (full control of private repositories)
- Click en "Generate token"
- **Copia el token** (aparece una sola vez)

### 2. Ejecuta el script de push

En tu terminal, dentro de la carpeta descargada:

```bash
./push-with-token.sh
```

Cuando pida el token, pégalo y presiona Enter.

---

## 📦 Opción Alternativa: Usando Git Bundle

Si prefieres no ingresar credenciales:

```bash
git clone cobranding-logo-generator.bundle cobranding-repo
cd cobranding-repo
git remote add origin https://github.com/jota-erre-coto/Cobranding-logo-generator.git
git push -u origin main
```

---

## 🔧 Opción Manual

Si ninguno de los scripts funciona:

```bash
# Configura credenciales
git config --local credential.helper store

# Haz push
git push -u origin main

# Ingresa usuario y token cuando se te pida
```

---

## ✅ Verificación

Una vez completado, deberías ver en GitHub:
- ✓ index.html (la herramienta)
- ✓ README.md (documentación)
- ✓ SETUP_GITHUB.md
- ✓ .gitignore
- ✓ 1 commit

**URL:** https://github.com/jota-erre-coto/Cobranding-logo-generator

---

## 🛡️ Seguridad

- El token solo funciona con tu repositorio
- Puedes revocarlo en cualquier momento en GitHub Settings
- No lo compartas con nadie
- El script no guarda el token en ningún archivo

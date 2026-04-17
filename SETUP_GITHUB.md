# Configurar GitHub

El repositorio local está listo. Sigue estos pasos para subirlo a GitHub:

## Opción 1: Desde GitHub Web (más fácil)

1. Ve a https://github.com/new
2. Crea un nuevo repositorio con el nombre: `cobranding-logo-generator`
3. **NO inicialices con README** (ya tenemos uno)
4. Copia el comando de push y ejecútalo en esta carpeta:

```bash
git remote add origin https://github.com/TU_USUARIO/cobranding-logo-generator.git
git branch -M main
git push -u origin main
```

## Opción 2: Desde línea de comandos (GitHub CLI)

Si tienes `gh` CLI instalado:

```bash
gh repo create cobranding-logo-generator --public --source=. --remote=origin --push
```

## Opción 3: Manual con HTTPS

```bash
git remote add origin https://github.com/TU_USUARIO/cobranding-logo-generator.git
git branch -M main
git push -u origin main
```

Cuando se te pida autenticación:
- Usuario: Tu usuario de GitHub
- Contraseña: Tu token personal de acceso (PAT)

## Opción 4: Manual con SSH

Si tienes SSH configurado:

```bash
git remote add origin git@github.com:TU_USUARIO/cobranding-logo-generator.git
git branch -M main
git push -u origin main
```

---

**Nota**: Reemplaza `TU_USUARIO` con tu usuario real de GitHub.

Una vez completado, tu repositorio estará disponible en:
```
https://github.com/TU_USUARIO/cobranding-logo-generator
```

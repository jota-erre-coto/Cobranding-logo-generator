# 🚀 Deploy a Vercel

Guía paso a paso para desplegar tu Cobranding Logo Generator en Vercel.

## ⚡ Forma Más Rápida (Automática)

### 1. Ejecuta el script de deployment

```bash
./deploy-vercel.sh
```

### 2. Selecciona el método de autenticación

- **Opción 1** (Recomendada): Autenticación por navegador
  - Se abrirá tu navegador automáticamente
  - Solo necesitas confirmar en Vercel
  
- **Opción 2**: Con token de Vercel
  - Ve a https://vercel.com/account/tokens
  - Crea un nuevo token
  - Pégalo cuando lo pida el script

### 3. ¡Listo!

Tu aplicación estará disponible en una URL como:
```
https://cobranding-logo-generator.vercel.app
```

---

## 📋 Forma Manual

Si prefieres hacerlo manualmente:

### 1. Instala Vercel CLI
```bash
npm install -g vercel
```

### 2. Autentica
```bash
vercel login
```

### 3. Deploy
```bash
vercel --prod
```

---

## 🔗 Integración con GitHub (Recomendado)

Para que Vercel haga deploy automático cada vez que hagas push a GitHub:

1. Ve a https://vercel.com/new
2. Selecciona "Import Git Repository"
3. Conecta tu repositorio de GitHub
4. Selecciona `jota-erre-coto/Cobranding-logo-generator`
5. Click en "Deploy"
6. ¡Listo! Cada push actualizará automáticamente tu sitio

### Ventajas:
- ✓ Deploy automático en cada push
- ✓ Preview de pull requests
- ✓ Historial de deployments
- ✓ Rollback fácil
- ✓ Dominio personalizado (opcional)

---

## 🎯 Después del Deploy

Una vez desplegado:

1. **URL de la aplicación:** https://cobranding-logo-generator.vercel.app
2. **Dashboard:** https://vercel.com/dashboard
3. **Análisis:** Ver estadísticas de uso y rendimiento
4. **Dominio personalizado:** Agregar tu propio dominio (opcional)
5. **Colaboradores:** Invitar a otros a trabajar en el proyecto

---

## 📊 Variables de Entorno (si las necesitas)

Edita `.env` y define:
```bash
VARIABLE_NAME=value
```

En Vercel Dashboard:
1. Ve a Settings > Environment Variables
2. Agrega tus variables
3. Redeploy

---

## ✅ Verificación

Después del deploy, verifica que:
- [ ] El sitio carga correctamente
- [ ] Puedes subir un SVG
- [ ] La previsualización funciona
- [ ] Los botones de exportación funcionan
- [ ] El ZIP se descarga correctamente

---

## 🆘 Troubleshooting

### "Error: Not authenticated"
→ Ejecuta `vercel login` y autenticate

### "Error: No Vercel configuration found"
→ Asegúrate de tener `vercel.json` en la raíz

### "Deployment failed"
→ Revisa los logs en Vercel Dashboard

### "Static files not found"
→ Verifica que `index.html` esté en la raíz

---

## 📚 Recursos

- [Vercel Docs](https://vercel.com/docs)
- [Vercel CLI](https://vercel.com/cli)
- [Vercel Dashboard](https://vercel.com/dashboard)

---

**¡Tu aplicación está lista para el mundo! 🌍**

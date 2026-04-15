🚀 Despliegue de OpenLDAP y Configuración de Directorio

Este manual documenta el proceso técnico integral para crear un entorno de servidor de directorio profesional, utilizando OpenLDAP sobre un sistema Debian 11 (Bullseye).

---

## 📂 Fase 01: Actualización y Preparación del Entorno
El éxito de la instalación de OpenLDAP depende de un sistema base sólido y actualizado. En esta fase preparamos Debian 11 para los servicios de identidad.

### Paso 1.1: Actualización de Repositorios
Iniciamos sincronizando los índices de paquetes para asegurar que descargamos las versiones más recientes.
> **Comando:** `sudo apt update`

**Captura 01:**
![Actualización de repositorios](01-actualizacion-y-preparacion/01-apt-update.png)

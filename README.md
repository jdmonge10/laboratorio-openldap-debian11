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


---

## 📂 Fase 02: Instalación de OpenLDAP
En esta etapa instalamos el núcleo del servicio de directorio y las herramientas necesarias para interactuar con él desde la línea de comandos.

### Paso 2.1: Instalación de paquetes (slapd y ldap-utils)
Ejecutamos la instalación del demonio LDAP y las utilidades de gestión.
> **Comando:** `sudo apt install slapd ldap-utils -y`

**Captura 01:**
![Comando de instalación](02-instalacion-openldap/01-comando-instalacion.png)

### Paso 2.2: Configuración de la contraseña del Administrador
Durante el proceso, el sistema solicitará definir una contraseña para el usuario `admin`. Esta credencial es fundamental para la gestión jerárquica del directorio.

**Captura 02:**
![Configuración Password](02-instalacion-openldap/02-configuracion-password.png)

### Paso 2.3: Confirmación de Contraseña
Se debe reingresar la contraseña para validar que no existan errores de escritura.

**Captura 03:**
![Confirmación Password](02-instalacion-openldap/03-confirmacion-password.png)

### Paso 2.4: Finalización de la Instalación
El instalador despliega la base de datos inicial y activa el demonio `slapd` en el sistema.

**Captura 04:**
![Finalización Instalación](02-instalacion-openldap/04-finalizacion-instalacion.png)

---

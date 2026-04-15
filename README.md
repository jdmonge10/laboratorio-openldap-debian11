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

## 📂 Fase 03: Verificación del Servicio
Una vez finalizada la instalación, es imprescindible validar que el demonio `slapd` se encuentra en ejecución y operando sin errores en el sistema.

### Paso 3.1: Comprobación del estado del servicio
Utilizamos el sistema de control de servicios para verificar que OpenLDAP está "active (running)". Este paso confirma que el servidor está listo para recibir peticiones en el puerto 389.
> **Comando:** `sudo systemctl status slapd`

**Captura 01:**
![Estado activo del servicio](03-verificacion-del-servicio/01-status-activo.png)

---

## 📂 Fase 04: Configuración del Servidor
En esta etapa personalizamos la instancia de OpenLDAP para definir la estructura del directorio (DN base) y la identidad de la organización.

### Paso 4.1: Ejecución del Asistente de Reconfiguración
Utilizamos la herramienta de gestión de paquetes para lanzar el asistente interactivo de `slapd`.
> **Comando:** `sudo dpkg-reconfigure slapd`

**Captura 01:**
![Comando ejecutar asistente](04-configuracion-del-servidor/01-comando-ejecutar-asistente.png)

### Paso 4.2: Omisión de la Configuración Inicial
Se selecciona la opción "No" para permitir que el asistente nos guíe en la creación de una nueva base de datos personalizada.

**Captura 02:**
![Omitir configuración](04-configuracion-del-servidor/02-omitir-configuracion.png)

### Paso 4.3: Definición del Nombre de Dominio
Se introduce el nombre DNS que servirá para construir el Base DN del directorio (ej. `empresa.local`).

**Captura 03:**
![Nombre de dominio](04-configuracion-del-servidor/03-nombre-dominio.png)

### Paso 4.4: Nombre de la Organización
Se especifica el nombre de la entidad que será utilizado en el DN base.

**Captura 04:**
![Nombre organización](04-configuracion-del-servidor/04-nombre-organizacion.png)

### Paso 4.5: Contraseña del Administrador
Se define y confirma la contraseña para la cuenta `admin` del nuevo directorio configurado.

**Capturas 05 y 06:**
![Password admin](04-configuracion-del-servidor/05-password-admin.png)
![Confirmación password](04-configuracion-del-servidor/06-confirmacion-password.png)

### Paso 4.6: Opciones de Base de Datos y Purga
Se configura el motor de base de datos y se decide si se desea eliminar la base de datos anterior (purgado) al desinstalar el paquete.

**Captura 07:**
![Opción purgado](04-configuracion-del-servidor/08-opcion-purgado.png)

### Paso 4.7: Gestión de Base de Datos Antigua
Se confirma el movimiento de los archivos de la base de datos antigua para evitar conflictos con la nueva configuración.

**Captura 08:**
![Mover base de datos](04-configuracion-del-servidor/09-mover-base-datos.png)

### Paso 4.8: Resumen y Finalización
El asistente aplica los cambios y muestra el resumen final de la configuración del servidor LDAP.

**Captura 09:**
![Resumen final](04-configuracion-del-servidor/10-resumen-final-asistente.png).

#!/bin/bash
# =================================================================
# SCRIPT 02: INSTALACIÓN DE OPENLDAP
# =================================================================

echo "📦 Instalando OpenLDAP y utilidades..."

# Instalación de paquetes
sudo apt install slapd ldap-utils -y

echo "✅ Instalación completada."

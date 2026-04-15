#!/bin/bash
# =================================================================
# SCRIPT 01: ACTUALIZACIÓN Y PREPARACIÓN DEL SISTEMA
# =================================================================

echo "🚀 Iniciando preparación del sistema..."

# Actualizar repositorios y paquetes
sudo apt update && sudo apt upgrade -y

# Configurar el hostname (ajusta 'ldap-server' si prefieres otro)
sudo hostnamectl set-hostname ldap-server

echo "✅ Sistema actualizado y hostname configurado como: $(hostname)"
echo "⚠️  Se recomienda reiniciar para aplicar todos los cambios."

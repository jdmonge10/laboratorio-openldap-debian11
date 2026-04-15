#!/bin/bash
# =================================================================
# SCRIPT 03: VERIFICACIÓN TÉCNICA
# =================================================================

echo "🔍 Verificando estado del servicio..."
sudo systemctl status slapd --no-pager

echo -e "\n📡 Consultando Root DSE (Naming Contexts)..."
ldapsearch -H ldap:// -x -s base -b "" -LLL "namingContexts"

echo -e "\n✅ Verificación finalizada."

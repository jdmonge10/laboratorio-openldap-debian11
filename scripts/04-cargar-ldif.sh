#!/bin/bash
# =================================================================
# SCRIPT 04: CARGA DE ESTRUCTURA BASE (ORGANIZACIÓN: LABORATORIO)
# =================================================================

echo "🚀 Cargando Unidades Organizativas en el dominio dc=laboratorio,dc=local..."

# El comando pedirá la contraseña de admin que pusiste en la Fase 02
ldapadd -x -D "cn=admin,dc=laboratorio,dc=local" -W -f ../ldif/01-estructura-base.ldif

echo "✅ Proceso finalizado."

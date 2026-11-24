#!/bin/bash
#
# analizar-logs.sh -  procesa un registro de acceso web y genera un reporte
# Uso: ./analizar-logs.sh ../recursos/acceso.log

ARCHIVO="$1"

# paso 1: lee el archivo de log, extrae las IP y muestra las 5 mas frecuentes
echo "=== TOP 5 DIRECCIONES IP ==="
cut -d' ' -f1 "$ARCHIVO" | sort | uniq -c | sort -rn | head -5

# paso 2: lee el archivo de log, extrae los codigos HTTP y muestra cuantos hay de cada uno
echo "=== CONTEO POR CODIGO DE ESTADO ==="
awk '{print $(NF-1)}' "$ARCHIVO" | sort | uniq -c | sort -rn

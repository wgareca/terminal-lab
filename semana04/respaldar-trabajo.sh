#!/bin/bash
#
# respaldar-trabajo.sh - respalda archivos recientes del repositorio
# Uso: respaldar-trabajo

# paso 1: buscar archivos modificados en los ultimos 7 dias excluyendo .git
ORIGEN="$HOME/terminal-lab"
ARCHIVOS=$(find "$ORIGEN" -path "$ORIGEN/.git" -prune -o -type f -mtime -7 ! -name "*.tmp" -print)

# paso 2: Crear directorio de destino y comprimir los archivos con la fecha de hoy
DESTINO="$HOME/respaldos-lab"
mkdir -p "$DESTINO"
FECHA=$(date +%Y-%m-%d)
PAQUETE="$DESTINO/respaldo-$FECHA.tar.gz"
tar -czf "$PAQUETE" $ARCHIVOS 2>/dev/null

# paso 3: mostrar informe con la cantidad de archivos respaldados y el tamano del paquete
CANTIDAD=$(echo "$ARCHIVOS" | wc -l)
TAMANO=$(du -sh "$PAQUETE" | cut -f1)
echo "========================================"
echo "Respaldo completado: $PAQUETE"
echo "Archivos respaldados: $CANTIDAD"
echo "Tamano del paquete:   $TAMANO"
echo "========================================"

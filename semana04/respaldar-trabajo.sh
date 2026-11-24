#!/bin/bash
#
# respaldar-trabajo.sh - respalda archivos recientes del repositorio
# Uso: respaldar-trabajo

# paso 1: buscar archivos modificados en los ultimos 7 dias excluyendo .git
ORIGEN="$HOME/terminal-lab"
ARCHIVOS=$(find "$ORIGEN" -path "$ORIGEN/.git" -prune -o -type f -mtime -7 ! -name "*.tmp" -print)


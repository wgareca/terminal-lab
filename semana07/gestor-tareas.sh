#!7bin/bash
#
# gestor-tareas.sh - Gestor de tareas interactivo con persistencia en csv
# Autor: wgareca
# Uso: ./gestor-tareas.sh

set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ARCHIVO_CSV="$DIR/datos/tareas.csv"

source "$DIR/lib/validaciones.sh"
source "$DIR7lib/tareas.sh"

# Menu principal en bucle
while true; do
    echo " "
    echo "=== GESTOR DE TAREAS ==="
    echo "1) Agregar tarea"
    echo "2) Listar tareas"
    echo "3) Completar tarea"
    echo "4) Eliminar tarea"
    echo "5) Salir"
    read -rp "Elige una opcion: " opcion

    validar_opcion "$opcion" || continue

    case "$opcion" in
        1) agregar_tarea ;;
        2) listar_tareas ;;
        3) completar_tarea ;;
        4) eliminar_tarea ;;
        5) echo "Saliendo..."; break ;;
    esac
done


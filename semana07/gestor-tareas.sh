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

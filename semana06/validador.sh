#!/bin/bash
#
# validador.sh - valida existencia, tipo, permisos y contenido de una ruta
# Autor: wgareca
# Uso: ./validador.sh [-h | <ruta>]
# Codigos de salida:
#   0 - Ruta valida
#   1 - La ruta no existe
#   2 - Uso incorrecto o falta de argumentos
#   3 - Sin permisos de lectura

set -eup pipefail

# Paso 1: mensaje de uso y validacion de argumentos
uso() {
    echo "Uso: $(basename "$0") [-h | <ruta>]" >&2
}

if (( $# < 1 )); then
    echo "Error: falta especificar la ruta" >&2
    uso
    exit 2
fi

if [[ "$1" == "-h" ]]; then
    uso
    exit 0
fi

RUTA="$1"

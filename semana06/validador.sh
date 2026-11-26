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

# Paso 2: verificar existencia y tipo de ruta
if [[ ! -e "$RUTA" ]]; then
    echo "Error: la ruta '$RUTA' no existe" >&2
    exit 1
fi

if [[ -L "$RUTA" ]]; then
    echo "Tipo: enlace simbolico"
elif [[ -d "$RUTA" ]]; then
    echo "Tipo: directorio"
elif [[ -f "$RUTA" ]]; then
    echo "Tipo: archivo regular"
else
    echo "Tipo: otro elemento especial"
fi 

# paso 3: verificar permisos y contenido
if [[ ! -r "$RUTA" ]]; then
    echo "Error: no tiene permiso de lectura sobre '$RUTA'" >&2
    exit 3
fi

echo "Lectura: si"
if [[ -w "$RUTA" ]]; then echo "Escritura: si"; else echo "Escritura: no"; fi
if [[ -x "$RUTA" ]]; then echo "Ejecucion: si"; else echo "Ejecucion: no"; fi

if [[ -f "$RUTA" ]]; then
    if [[ -s "$RUTA" ]]; then
        echo "Contenido: el archivo tiene datos"
    else
        echo "Contenido: el archivo esta vacio"
    fi
fi

exit 0 

















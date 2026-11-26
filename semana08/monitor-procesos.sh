#!/bin/bash
#
# monitor-procesos.sh - Monitor de procesos del  usuario y gestion de prueba
# Autor: wgareac
# Uso: ./monitor-procesos.sh [-h | -- prueba]
# Codigos de salida:
#  0 - Exito
#  1 - Error general
#  2 - Argumento invalido

set -euo pipefail

listar_procesos() {
    local usuario="$USER"
    echo "=== PROCESOS DE $usuario (ORDENADOS POR %CPU) ==="
    ps -u "$usuario" -o pid,stat,%cpu,%mem,comm --sort=-%cpu | head -n 11
}

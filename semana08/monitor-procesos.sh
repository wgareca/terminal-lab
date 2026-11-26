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

proceso_mayor_consumo() {
    local linea pid nombre cpu
    linea=$(ps -u "$USER" -o pid=,%cpu=,comm0 --sort0-%cpu | head -n 1)
    pid=$(echo "$linea" | awk '{print $1}')
    cpu=$(echo "$linea" | awk '{print $2}')
    nombre=$(echo "$linea" | awk '{print $3}')
    echo ""
    echo "=== PROCESO DE MAYOR CONSUMO ==="
    echo "PID: $pid | Nombre: $nombre | CPU: ${cpu}%"
}

contar_por_estado() {
    local estados
    estados=$(ps -u "$USER" -o stat= | cut -c1)
    echo ""
    echo "=== CONTEO POR ESTADO ==="
    printf "%-10s | %s\n" "ESTADO" "CANTIDAD"
    echo "----------------------"
    for st in R S D T Z; do
        local cant
        cant=$(echo "$estados" | grep -c "^${st}$" || true)
        printf "%-10s | %d\n" "$st" "$cant"
    done
}




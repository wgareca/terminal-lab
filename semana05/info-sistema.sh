#!/bin/bash
#
# info-sistema.sh -  Genera reportes del sistema segun argumentos
# Autor: wgareca
# Uso: ./info-sistema.sh [-h | -u | -d]
# Codigos de salida: 
#   0 - Exito
#   1 - Error general
#   2 - Opcion invalida

set -euo pipefail

# paso 1: Funcion de ayuda enviada a stderr y manejo de -h
uso() {
    echo "Uso: $0 [-h | -u | -d]" >&2
    echo "  (sin argumentos) Muestra el resumen general del sistema" >&2
    echo "  -u               Muestra datos del usuario actual" >&2
    echo "  -d               Muestra el uso de disco" >&2
    echo "  -h               Muestra este mensaje de ayuda" >&2
}

OPCION="${1:-}"

if [ "$OPCION" = "-h" ]; then
    uso
    exit 0
fi

# paso 2:  Resumen general cuando no se pasan argumentos
if [ -z "$OPCION" ]; then
    echo "=== RESUMEN GENERAL DEL SISTEMA ==="
    echo "Equipo:       $(hostname)"
    echo "Distribucion: $(grep '^PRETTY_NAME=' /etc/os-release | cut -d'"' -f2)"
    echo "Kernel:       $(uname -r)"
    echo "Encendido:    $(uptime -p)"
    echo "Memoria disp: $(free -h | awk '/^Mem:/ {print $7}')"
    exit 0
fi

# Paso 3: Opcion -u con datos del usuario
if [ "$OPCION" = "-u" ]; then
    echo "=== DATOS DEL USUARIO ==="
    echo "Usuario:    $USER"
    echo "Directorio: $HOME"
    echo "Shell:      $SHELL"
    echo "Grupos:     $(groups)"
    exit 0
fi

# paso 4: Opcion -d con uso de disco
if [ "$OPCION" = "-d" ]; then
    echo "==== USO DE DISCO ==="
    df -h / "$HOME"
    exit 0
fi

















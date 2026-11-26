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

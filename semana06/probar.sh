#!/bin/bash
#
# probar.sh - Ejecuta los casos de prueba de validador.sh

touch ./vacio.txt ./sin-lectura.txt
chmod 000 ./sin-lectura.txt

verificar() {
    local caso="$1"
    local esperado="$2"
    shift 2
    ./validador.sh "$@" >/dev/null 2>&1
    local obtenido=$?
    if [[ "$obtenido" -eq "$esperado" ]]; then
        echo "[OK] $caso (codigo: $obtenido)"
    else
       echo "[FALLO] $caso (esperado: $esperado, obtenido: $obtenido)"
    fi
}

verificar "Sin argumentos" 2
verificar "Ruta inexistente" 1 "/no/existe"
verificar "Directorio" 0 "/tmp"
verificar "Archivo regular legible" 0 "/etc/hostname"
verificar "Archivo sin permiso lectura" 3 "./sin-lectura.txt"
verificar "Archivo vacio" 0 "./vacio.txt"

chmod 644 ./sin-lectura.txt
rm -f ./vacio.txt ./sin-lectura.txt

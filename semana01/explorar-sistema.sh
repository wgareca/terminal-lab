#!/bin/bash
#
# explorar-sistema.sh - Recorre la jerarquia del sistema y la documenta
# Uso: ./explorar-sistema.sh

# seccion 1: /etc
echo "Directorio: /etc"
echo "Funcion: Guarda los archivos de configuracion del sistema en texto plano."
ls -lh /etc | head -n 6

# seccion 2: /var
echo "Directorio: /var"
echo "Funcion: Almacena datos que cambian durante la operacion como registros, cola y cache."
ls -lh /var | head -n 6

# seccion 3: /home
echo "Directorio: /home"
echo "Funcion: contiene un subdirectorio por cad usuariocon sus archivos personales."
ls -lh /home | head -n 6

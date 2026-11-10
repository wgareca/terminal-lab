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

# Seccion 4: /bin
echo "Directorio: /bin"
echo "Funcion: contiene programas esenciales disponibles para todo usuario como ls, cp y bash."
ls -lh /bin | head -n 6

# Seccion 5: /tmp
echo "Directorio: /tmp"
echo "Funcion: guarda archivos temporales que se vacian al reiniciar el sistema."
ls -lh /tmp | head -n 6

# Seccion  6: /proc
echo "Directorio: /proc"
echo "Funcion: Sistema virtual que muestra el estado del kernel y de cada proceso en ejecucion."
ls -lh /proc | head -n 6

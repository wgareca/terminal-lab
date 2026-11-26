#!/bin/bash

agregar_tarea() {
    local desc nuevo_id fecha
    read -rp "Descripcion de la tarea: " desc
    validar_descripcion "$desc" || return 1

    nuevo_id=$(awk -F',' 'NR>1 {if ($1 > max) max = $1} END {print max + 1}' "$ARCHIVO_CSV")
    fecha=$(date +%Y-%m-%d)

    echo "$nuevo_id,$desc,pendiente,$fecha" >> "$ARCHIVO_CSV"
    echo "Tarea #$nuevo_id agregada."
}

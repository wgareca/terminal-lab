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

listar_tareas() {
    local id desc estado fecha total=0
    echo ""
    echo "ID | ESTADO     | FECHA      | DESCRIPCION"
    echo "------------------------------------------------"
    while IFS=',' read -r id desc estado fecha; do
        [[ "$id" == "id" ]] && continue
        printf "%-2s | %-10s | %-10s | %s\n" "$id" "$estado" "$fecha" "$desc"
        ((total++))
    done < "$ARCHIVO_CSV"

    if (( total == 0 )); then
        echo "(No hay tareas registradas)"
    fi
}

completar_tarea() {
    local id_buscar id desc estado fecha temp
    read -rp "ID de la tarea a completar: " id_buscar
    validar_id_existe "$id_buscar" || return 1

    temp=$(mktemp)
    while IFS=',' read -r id desc estado fecha; do
        if [[ "$id" == "$id_buscar" ]]; then
            echo "$id,$desc,completada,$fecha" >> "$temp"
        else
            echo "$id,$desc,$estado,$fecha" >> "$temp"
        fi
    done < "$ARCHIVO_CSV"

    mv "$temp" "$ARCHIVO_CSV"
    echo "Tarea #$id_buscar marcada como completada"
}

eliminar_tarea() {
    local id_buscar id desc estado fecha temp
    read -rp "ID  de la tarea a eliminar: " id_buscar
    validar_id_existe "$id_buscar" || return 1

    temp=$(mktemp)
    while IFS=',' read -r id desc estado fecha; do
        if [[ "$id" != "$id_buscar" ]]; then
            echo "$id,$desc,$estado,$fecha" >> "$temp"
        fi
    done < "$ARCHIVO_CSV"

    mv "$temp" "$ARCHIVO_CSV"
    echo "Tarea #$id_buscar eliminada."
}














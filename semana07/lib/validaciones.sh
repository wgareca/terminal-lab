#!/bin/bash

validar_opcion() {
    local op="$1"
    if [[ ! "$op" =~ ^[1-5]$ ]]; then
        echo "Error: opcion invalida. Elige un numero del 1 al 5." >&2
        return 1
    fi
    return 0
}

validar_descripcion() {
    local texto="$1"
    if [[ -z "${texto// /}" ]]; then
        echo "Error: la descripcion no puede estar vacia." >&2
        return 1
    fi
    if [[ "$texto" == *","* ]]; then
        echo "Error: la descripcion no puede contener comas." >&2
        return 1
    fi
    return 0
}

validar_id_existe() {
     local id_buscado="$1"
     local id desc estado fecha

     if [[ ! "$id_buscado" =~ ^[0-9]+$ ]]; then
         echo "Error: el ID debe ser un numero entero positivo." >&2
         return 1
     fi

     while IFS=',' read -r id desc estado fecha; do
         [[ "$id" == "id" ]] && continue
         if [[ "$id" == "$id_buscado" ]]; then
             return 0
         fi
     done < "$ARCHIVO_CSV"

     echo "Error: no existe ninguna tarea con ID $id_buscado." >&2
     return 1
}




#!/bin/bash

#David Camilo Vinaja Acevedo IRC9.1

archivo_csv="Accidentes_ags_2021.csv"

# Función para mostrar los datos filtrados en columnas
mostrar_datos() {
    local id_columna=1
    local vehiculos_columna=13

    # Mostrar encabezados
    printf "%-10s %-10sn" "ID" "AUTOMOVIL"
    printf "%-10s %-10sn" "==========" "=========="

    # Filtrar datos y mostrar en columnas
    awk -F ',' -v id_col="$id_columna" -v veh_col="$vehiculos_columna" -v valor="$1" '
        $veh_col == valor {
            printf "%-10s %-10sn", $id_col, $veh_col
        }
    ' "$archivo_csv"
}

# Llamar a la función con el valor a filtrar
mostrar_datos "abastos"
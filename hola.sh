#!/bin/bash

# Función para mostrar la fecha actual
mostrar_fecha() {
    date +"%Y-%m-%d %H:%M:%S"
}

# Función para mostrar la fecha actual y agregar "Hola Brou" después de 1 minuto
mostrar_fecha_y_hola_brou() {
    while true; do
        fecha_actual=$(mostrar_fecha)
        echo "$fecha_actual"
        sleep 60
        echo "$(mostrar_fecha) - Hola brou"
    done
}

# Ejecutar la función principal
mostrar_fecha_y_hola_brou

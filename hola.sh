#!/bin/bash
#David Camilo Vinaja Acevedo IRC 9.1
l
mostrar_fecha() {
    date +"%Y-%m-%d %H:%M:%S"
}
mostrar_fecha_y_hola_Terricola() {
    while true; do
        fecha_actual=$(mostrar_fecha)
        echo "$fecha_actual"
        sleep 2
        echo "$(mostrar_fecha) - Hola Terricola has sido hackeado"
    done
}

# Ejecutar la función principal
mostrar_fecha_y_hola_Terricola


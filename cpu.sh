#!/bin/bash

# Función para mostrar el porcentaje de RAM utilizada
mostrar_ram() {
    free | awk '/Mem/{printf("RAM utilizado: %.2f%\n"), $3/$2*100}'
}

# Función para mostrar el uso de CPU
mostrar_cpu() {
    top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{printf("Uso de CPU: %.2f%\n"), 100 - $1}'
}

# Función para mostrar el espacio de almacenamiento disponible
mostrar_almacenamiento() {
    df -h | awk '$NF=="/"{printf("Almacenamiento disponible: %s libre de %s\n"), $4, $2}'
}

# Función principal para mostrar información en tiempo real
mostrar_info_en_tiempo_real() {
    while true; do
        clear
        mostrar_ram
        mostrar_cpu
        mostrar_almacenamiento
        sleep 2
    done
}

# Ejecutar la función principal
mostrar_info_en_tiempo_real

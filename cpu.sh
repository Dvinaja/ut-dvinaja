#!/bin/bash
#David Camilo Vinaja Acevedo IRC9.1
# Función para mostrar el porcentaje de RAM utilizada
mostrar_ram() {
    free | awk '/Mem/{printf("RAM utilizado en equipo dvinaja : %.2f%\n"), $3/$2*100}'
}

# Función para mostrar el uso de CPU
mostrar_cpu() {
    top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{printf("Uso de CPU en dvinaja : %.2f%\n"), 100 - $1}'
}

# Función para mostrar el espacio de almacenamiento disponible en nuestro equipo
mostrar_almacenamiento() {
    df -h | awk '$NF=="/"{printf("Almacenamiento disponible en equipo dvinaja: %s libre de %s\n"), $4, $2}'
}

# Función principal para poder ver la informacion de nuestro equipo en tiempo real
mostrar_info_en_tiempo_real() {
    while true; do
        clear
        mostrar_ram
        mostrar_cpu
        mostrar_almacenamiento
#Tiempo en que se ejecutara otra vez el programa en este caso cada 5 segundos
        sleep 5
    done
}

# Ejecutar la función principal
mostrar_info_en_tiempo_real

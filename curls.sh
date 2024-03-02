#!/bin/bash

# Lista de URLs a verificar
urls=(
    "www.nwt.com"
    "www.google.com"
    "www.youtube.com"
    "www.spotify.com"
    "www.8979798.com"
    "www.facebook.com"
    "www.ruralnet.com"
    "www.hyundai.com"
    "www.whatsapp.com"
    "www.xvideos.com"
)
# Función para imprimir en verde
print_ok() {
    echo -e "\e[32mOK\e[0m"
}

# Función para imprimir en rojo
print_fail() {
    echo -e "\e[31mFail\e[0m"
}

echo "Página Web               | OK  | Fail"
echo "-------------------------+-----+-----"

# Recorre la lista de URLs y realiza solicitudes CURL
for url in "${urls[@]}"; do
    if curl -s --head "$url" | head -n 1 | grep "HTTP/1.[01] [23].." > /dev/null; then
        echo -n "$url | $(print_ok)  |"
    else
        echo -n "$url |      | $(print_fail)"
    fi
    echo ""
done

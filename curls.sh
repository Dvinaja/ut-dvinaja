#!/bin/bash

# Lista de URLs a verificar
urls=(
    "www.nwt.com"
    "www.google.com"
    "www.youtube.com"
    "www.spotify.com"
    "www.hbo.com"
    "www.facebook.com"
    "www.telmex.com"
    "www.hjvjhvjhvhjvi.com"
    "www.whatsapp.com"
    "www.xvideos.com"
)

echo "      Done          |        Fail"
echo "----------------------+------------------"

# Recorre la lista de URLs y realiza solicitudes CURL
for url in "${urls[@]}"; do
    if curl -s --head "$url" | head -n 1 | grep "HTTP/1.[01] [23].." > /dev/null; then
        echo "$url |"
    else
        echo "| $url"
    fi
done

#!/bin/bash

# Cargar configuración
source $HOME/.telegram_bot/config

# Mensaje a enviar
MENSAJE=" ¡Hola! La fecha y hora actual es: $(date)"

# URL de la API de Telegram
echo "url $URL id $ID"

# Enviar mensaje
curl -s -X POST $URL -d chat_id="$ID" -d text="$MENSAJE" > /dev/null 2>&1  echo "✅ Mensaje enviado a Telegram."
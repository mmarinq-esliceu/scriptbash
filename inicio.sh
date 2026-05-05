#!/bin/bash

source $HOME/.telegram_bot/config

MENSAJE=" El servidor se ha iniciado correctamente."

URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id="$ID" -d text="$MENSAJE" > /dev/null 2>&1  && echo " Mensaje enviado a Telegram."

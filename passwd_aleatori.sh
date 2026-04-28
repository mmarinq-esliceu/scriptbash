#!/bin/bash

#mostram diferents maneres de generar passwd

#password com un número aleatori
PASSWORD=${RANDOM}
echo "password com un número aleatori: ${PASSWORD}"

PASSWORD=${RANDOM}${RANDOM}${RANDOM}
echo "password com a tres números aleatoris: ${PASSWORD}"

#password amb sha256sum
PASSWORD=$(date +%s%N | sha256sum | head -c10)
echo "${PASSWORD}"




#!/bin/bash

if [[ $# -ne 1 ]]
then
    echo "Error: se requiere un único parámetro"
    exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: se requiere un número"
    exit 1
fi

echo "Vamos a calcular el sumatorio de $1"


n=$1
suma=0

for (( i=1;i<=n;i+=2 ))
do
    echo "i: $i n $n"
    suma=$((suma+i))
done

echo "la suma de los numeros pares entre 1 y $n vale $suma"

exit 0
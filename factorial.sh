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

n=$1
echo "vamos a calcular el valor factorial de $n"

n=$1
producto=1

for (( i=1; i<=n; i++ ))
do
    producto=$((producto*i))
done

echo "el factorial de $n es $producto"

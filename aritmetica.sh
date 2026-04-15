#!/bin/bash

read -p "introdueix el valor de X: " X
read -p "introdueix el valor de Y: " Y

echo "Has introduït ${X} i ${Y}"

Suma=$((X+Y))
echo "${X}+${Y}=${Suma}"
Resta=$((X-Y))
echo "${X}-${Y}=${Resta}"
Producte=$((X*Y))
echo "${X}*${Y}=${Producte}"
Divisio=$(echo "scale=2; ${X}/${Y}" | bc)
echo "${X}/${Y}=${Divisio}"

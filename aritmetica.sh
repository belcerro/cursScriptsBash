#!/bin/bash

#aquest scrip ens mostra com
#realitzar les operacions aritmetiques

read -p "introdueix el valor de x: " X
read -p "introdueix el valor de y: " Y
echo "Has introduit ${X} i ${Y}"
SUMA=$((X+Y))
echo "${X}+${Y}=${SUMA}"
RESTA=$((X-Y))
echo "${X}-${Y}=${RESTA}"
PRODUCTE=$((X*Y))
echo "${X}*${Y}=${PRODUCTE}"

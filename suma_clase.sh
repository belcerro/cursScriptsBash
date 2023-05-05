#!/bin/bash

SUMA=0
PRODUCTE=1 #ELEMENTO NEUTRO DEL PRODUCTO 1
for I in ${@}
do
    SUMA=$((SUMA+I))
    PRODUCTE=$((PRODUCTE*I))
done
    echo "la suma vale ${SUMA}"
    echo "el producto vale ${PRODUCTE}
    
#!/bin/bash
#control de error
# si no nos pasan dos parámetros damos mensaje de error y salimos del script
NUM_PARAM=${#}
#echo "NUM_PARA ${NUM_PARAM}"
if [[ ${NUM_PARAM} -ne 2 ]]
then
    echo "ERROR: tienes que introducir dos parámetros"
    exit 1
fi

# este script tiene que recoger dos parámetros, los tiene
# que sumar y tiene que escribir en pantalla "a+b=resultado"

A=${1}
B=${2}
SUMA=$((A+B))
echo "${A}+${B}=${SUMA}"
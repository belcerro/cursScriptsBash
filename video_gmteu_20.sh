#!/bin/bash
#nos enseña el nombre del script que ejecutamos
echo "Nombre del script ${0}"

#enseña el PATH (RUTA) i el filename del script
echo "el PATH: $(dirname ${0}) el fichero sera $(basename ${0})"
#/home/belen/cusScriptsBash/ =PATH (RUTA) Y basename sera el nombre del fichero

#para determinar el numero de parámetros
NUMERO_PARAMETROS=${#}

if [[ ${NUMERO_PARAMETROS} -eq 0 ]]
then
    echo "USAGE: ${0} USER_NAME [USER_NAME]..."
    exit 1
fi

#${*} enseña el conjunto de parámetros en una sola palabra
echo "${*}"

#${@} enseña el conjunto de parámetres en palabras diferentes
echo "${@}"
#FOR ES UN BUCLE QUE SE EJECUTA POR CADA ELEMENTO ${@}
#estructura de control para iterar parámetros
for USER_NAME in "${@}"
do 
#ENTRAREMOS EN ESTE BLOC TANTAS VECES COMO PARAMETROS QUE PONGAMOS EN EL SCRIPT
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
done
#si en vez de @ uso * cogerá los 3 parametros "belen cerro campoy"
#como un solo nombre de user, poniendo @ interpretará cada parámetro
#como un nombre de usuario

echo "INTERACIÓN CON WHILE"
while [[ ${#} -ge 1 ]]
do
    USER_NAME=${1}
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
    shift
done

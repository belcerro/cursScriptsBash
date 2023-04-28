#!/bin/bash
function usage (){
      echo 
    echo "USAGE: ${0} USER_NAME [COMMENTS]"
    echo "COMMENTS contiene el nombre  completo"
    exit 1
}
NUMBER_PARAM=${#}
if [[ NUMBER_PARAM -eq 0 ]]
then 
   usage #creamos la función arriba y la lamamos
fi
#OBLIGAR A QUE MÍNIMO SE TENGA QUE INTRODUCIR UN PARÁMETRO

#aprenderemos a tratar con los argumentos (como se llaman fuera)
#y parámetros (como se llaman dentro)
SCRIPT_NAME=${0}
echo "Nombre del script ${SCRIP_NAME}"
#${1}.....${9}
echo ¨primer parámetro: ${1}¨
USER_NAME=${1}
echo ¨USER_NAME: ${USER_NAME}¨
echo ¨segundo parámetro: ${2}¨

#!/bin/bash

function usage(){
    echo "Usage ${0}"
    echo
    echo "Tienes que ser root"
    echo "el usuario no se puede repetir"
    exit 1 #indica que hay un error
}
#script para crear un usuario

#primero comprobamos que somos el usuario root
# echo ${UID} = indica cual es el UID del usuario
#validarse como root 'sudo su'

if [[ ${UID} -ne 0 ]] 
then
    usage
fi

read -p "Introduce el nombre completo: " COMMENTS
#Se pide el nombre del usuario
read -p "Introduce el nombre del usuario: " USER_NAME
#Se pide la contraseña
read -p "Introduce la contraseña: " PASSWORD


#Se crea el usuari
useradd -m -c "${COMMENTS}" ${USER_NAME}

exit 0 #indica que el script acaba bien

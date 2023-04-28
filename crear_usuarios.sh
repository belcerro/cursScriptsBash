#!/bin/bash

#script para crear un usuario
#primero comprobamos que somos el usuario root
function usage(){
    echo "Usage ${0}"
    echo
    echo "Tienes que ser root"
    echo "el usuario no se puede repetir"
    exit 1 #indica que hay un error
}

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


#Se crea el usuario
useradd -m -c "${COMMENTS}" ${USER_NAME}
#control del último comando
if [[ ${?} -ne 0 ]]
then
    echo "Error creando el usuario"
    exit 1
fi

#cambiar la contraseña del usuario
echo "${USER_NAME}":"${PASSWORD}" | chpasswd
#comprabar si el cambio ha ido bien
if [[ ${?} -ne 0 ]]
then
    echo "Error cambiando la contraseña"
    exit 1
fi

#hacer que caduque la contraseña
password -e ${USER_NAME}


exit 0 #indica que el script acaba bien

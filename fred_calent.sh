#!/bin/bash

#Genera un nombre aleatori entre 1 i 10:
adivina=$(( ( RANDOM % 10 )  + 1 ))

########################################################
# Escriu el teu codi aqui
########################################################
read -p "Tria un número: " X
if [ ${X} -eq ${adivina} ]
then 
    echo "has endevinat el número a la primera"
    exit 0
fi

read -p "Prova a triar un altre: " Y
if [ ${Y} -eq ${adivina} ]
then
    echo "has endevinat el número al segon intent"
    exit 0
fi
read -p "Últim intent: " Z
if [ ${Z} -eq ${adivina} ]
then
    echo "has endevinat el número al tercer intent"
else
    echo "No has endeviat el número!!!"
    exit 0
fi

########################################################
# Fi del teu codi
########################################################

echo "El nombre que havies d'adivinar era: ${adivina}"
#!/bin/bash

read -p "Introdueix X: " X

if [[ ${X} -le  5 ]]
then
    echo "has introdui un número menor o igual 5"
elif [[ ${X} -gt  5 ]]
then
    echo "es mayor o igual"
else
    echo "el número es 5"
fi
#EXPLICAR
#!/bin/bash

# script para crear un número determinado de ficheros 
#va a recibir el nombre,la extensión,el número y la ruta

#PRIMERO COMPROBACIÓN DE ERRORES
#COMO CREAR UNA FUNCIÓN PARA NO REPETIR CÓDIGO
#Y SUSTITUIRLA EN LAS FUNCIONES

error() {
    echo $1 #llamamos al primer parametro de la función
    exit 1
}

#primer error a comprovar: numero de parámetros correcto?
if [[ $# -ne 4 ]]
then 
    error "Inserte: Nombre extensión número ruta"
    # echo "Inserte: Nombre extensión número ruta"
    # exit 1
fi

#tambien se comprueba si el directorio existe
if [ ! -d $4 ] #existe el directorio que está en el parámetro 4
then
    error "Error: el directorio no existe"
#    echo "Error: el directorio no existe"
#    exit 1 
fi
#comprobar si el número que nos da es mayor a uno
#ya que no se pueden crear -1 ficheros o 0 ficheros
if [[ $3 -lt 1 ]]
then
    error "Error! El número de ficheros no puede ser menor a 1."
    # echo "Error! El número de ficheros no puede ser menor a 1."
    # exit 1
fi
#bucle donde: la interacióm empezará por 1; la interación siempre será
#menor o igual al parametro tres
#i se incrementa en de uno en uno
for (( i = 1; i <= $3; i++ ))
do
#el nombre será: el dicectorio/(después) parametro 1 que es el nombre
#el numero de ficheros que queremos crear que es i
#"." y el parametro 2 que es la extensión
    name="$4/$1$i.$2"
    #si es menor que 10 queremos que ponga un 0 delante de i
    if [[ $i -lt 10 ]]
    then
#añadimos un 0 antes de $i = 0$i para que añada un 0 si es menor a 10
        name="$4/$10$i.$2"
    fi
    `touch $name`
#para que no nos salga repetidas las / tr -s
    echo "Creado fichero $name" | tr -s /
done

#!/bin/bash

# 11) *Opcional*
#     Fes una copia del directori /tmp/prova a /tmp/copies/18052021_1525
#     El directori de destí ha de tenir la data i la hora del moment en que s'executa l'script
#     Usa la comanda cp -r /tmp/prova /tmp/copies/$(date +"<FORMAT>"), canvia <FORMAT> pel format de la data corresponent, igual que als punts anteriors.
echo "EXERCICI 10"
echo "---------------------------------------------------"
DIRECTORI=$(date +"%d_%m_%Y_%H:%Mh")
echo /tmp/copies/${DIRECTORI}
mkdir -p /tmp/copies/${DIRECTORI}
cp -r /tmp/prova /tmp/copies/${DIRECTORI}
#no funciona
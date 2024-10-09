#!/bin/bash

#Creo directorios

sudo mkdir -p $HOME/Estructura_Asimetrica/{correo,clientes}

#Creo archivos de cartas
for i in {1..100}
do
        sudo touch $HOME/Estructura_Asimetrica/correo/cartas_$i
        sudo touch $HOME/Estructura_Asimetrica/clientes/cartas_$i
done

#Creo archivos de carteros para el dir correo
for i in {1..10}
do
        sudo touch $HOME/Estructura_Asimetrica/correo/carteros_$i
done

#Muestro resultado
tree $HOME/Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4

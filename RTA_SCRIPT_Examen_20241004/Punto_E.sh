#!/bin/bash

RUTA_ARCHIVO=../RTA_ARCHIVOS_Examen_20241004/Filtro_Basico.txt

touch $RUTA_ARCHIVO

#Extraigo la memoria total

cat /proc/meminfo | grep MemTotal >> $RUTA_ARCHIVO

#Extraigo fabricante del chassis

sudo dmidecode -t chassis | grep Manufacturer >> $RUTA_ARCHIVO

#Muestro en consola el archivo

sudo cat $RUTA_ARCHIVO

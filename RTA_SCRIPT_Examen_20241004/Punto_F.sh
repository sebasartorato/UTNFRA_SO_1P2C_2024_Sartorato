#!/bin/bash

ARCHIVO=../RTA_ARCHIVOS_Examen_20241004/Filtro_Avanzado.txt

#Extraigo IP publica
echo "Mi IP Publica es: $(curl -s ifconfig.me)" >> $ARCHIVO

#Extraigo mi nombre usuario
echo "Mi usuario es: $(whoami)" >> $ARCHIVO

#Extraigo el Hash
echo "El Hash de mi Usuario es: $(sudo grep $(whoami) /etc/shadow | awk -F ':' '{print $2}')" >> $ARCHIVO

#Extraigo la URL del repositorio
echo "La URL de mi repositorio es: $(git remote get-url origin)" >> $ARCHIVO

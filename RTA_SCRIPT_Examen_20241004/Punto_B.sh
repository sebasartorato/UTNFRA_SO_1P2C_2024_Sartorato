#!/bin/bash

DISCO="/dev/sde"
PATH_CARPETAS="/Examenes-UTN/alumno_{1..3}/parcial_{1..3},profesores"

{
echo n
echo p
echo 1
echo 
echo +1G

for i in {2..3}; do
        echo n
        echo p
        echo $i #nro particion
        echo
        echo +1G
done

echo n
echo e
echo 4
echo
echo

for i in {5..10}; do
        echo n
        echo l
        echo
        echo +1G
done

echo w
} | sudo fdisk $DISCO

#Muestro resultado
sudo fdisk -l $DISCO

#Ejecuto el montaje

./Punto_B_bis.sh

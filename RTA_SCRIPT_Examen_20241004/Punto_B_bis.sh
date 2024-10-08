#!/bin/bash

DISCO="/dev/sde"

#Ejecuto formateo persistente y luego el montaje 

#Alumno 1
echo "${DISCO}1  /Examenes-UTN/alumno_1/parcial_1  ext4  defaults  0  0" | sudo tee -a /etc/fstab
echo "${DISCO}2  /Examenes-UTN/alumno_1/parcial_2  ext4  defaults  0  0" | sudo tee -a /etc/fstab
echo "${DISCO}3  /Examenes-UTN/alumno_1/parcial_3  ext4  defaults  0  0" | sudo tee -a /etc/fstab

#Alumno 2
echo "${DISCO}5  /Examenes-UTN/alumno_2/parcial_1  ext4  defaults  0  0" | sudo tee -a /etc/fstab
echo "${DISCO}6  /Examenes-UTN/alumno_2/parcial_2  ext4  defaults  0  0" | sudo tee -a /etc/fstab
echo "${DISCO}7  /Examenes-UTN/alumno_2/parcial_3  ext4  defaults  0  0" | sudo tee -a /etc/fstab

#Alumno 3 
echo "${DISCO}8  /Examenes-UTN/alumno_3/parcial_1  ext4  defaults  0  0" | sudo tee -a /etc/fstab
echo "${DISCO}9  /Examenes-UTN/alumno_3/parcial_2  ext4  defaults  0  0" | sudo tee -a /etc/fstab
echo "${DISCO}10  /Examenes-UTN/alumno_3/parcial_3  ext4  defaults  0  0" | sudo tee -a /etc/fstab

#Profesores

echo "${DISCO}10 /Examenes-UTN/profesores           ext4  defaults  0  0" | sudo tee -a /etc/fstab

#!/bin/bash

SHELL="/bin/bash"
USER_HASH=$(sudo grep $(whoami) /etc/shadow | awk -F ':' '{print $2}')


#Creo grupos primero
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

#Crear usuarios y asignar grupos
sudo useradd -m -s $SHELL -p $USER_HASH -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s $SHELL -p $USER_HASH -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s $SHELL -p $USER_HASH -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s $SHELL -p $USER_HASH -G p1c2_2024_gProfesores p1c2_2024_P1


sudo chmod 755 /Examenes-UTN

sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chmod 750 /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1/parcial_1
sudo chmod 750 /Examenes-UTN/alumno_1/parcial_1
sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1/parcial_2
sudo chmod 750 /Examenes-UTN/alumno_1/parcial_2
sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1/parcial_3
sudo chmod 750 /Examenes-UTN/alumno_1/parcial_3

sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chmod 760 /Examenes-UTN/alumno_2

sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2/parcial_1
sudo chmod 760 /Examenes-UTN/alumno_2/parcial_1

sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2/parcial_2
sudo chmod 760 /Examenes-UTN/alumno_2/parcial_2

sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2/parcial_3
sudo chmod 760 /Examenes-UTN/alumno_2/parcial_3


sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chmod 700 /Examenes-UTN/alumno_3

sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3/parcial_1
sudo chmod 700 /Examenes-UTN/alumno_3/parcial_1

sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3/parcial_2
sudo chmod 700 /Examenes-UTN/alumno_3/parcial_2

sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3/parcial_3
sudo chmod 700 /Examenes-UTN/alumno_3/parcial_3


sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod 775 /Examenes-UTN/profesores


#Creo archivo validar.txt

sudo su -c "whoami > /Examenes-UTN/alumno_1/validar1.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno_2/validar2.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno_3/validar3.txt" p1c2_2024_A3
sudo su -c "whoami > /Examenes-UTN/profesores/validar4.txt" p1c2_2024_P1


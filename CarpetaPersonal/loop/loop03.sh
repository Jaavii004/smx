#!/bin/bash

#mi tercer bucle
#Autor:Javier Puertas
#carpeta /var/log empiezan por a z r d s

for multi in a z r d s ;do
ls /var/log|grep ^[$multi]

done

exit 0

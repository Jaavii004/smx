#!/bin/bash

#Autor:Javier Puertas 
#mi quinto script
#me va a decir las IPs en su version 4 de todas las tarjetas de red

var=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1 -d'/')

hostname -i


echo=$var 

exit 0

 

#!/bin/bash

#Autor:Javier Puertas 
#mi tercer scrip

palabra= dmesg|grep "sda"|wc -l

if [ $palabra <7 ]  ; then

    echo menos de 7

else 

    echo mas de 7

fi 

exit 0 



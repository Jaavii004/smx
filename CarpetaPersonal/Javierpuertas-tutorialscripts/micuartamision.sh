#!/bin/bash

#Autor:Javier Puertas 
#mi cuart script
#saber si es par o impar

palabra= dmesg|grep "sda"|wc -l
let resto=numero%2
 
if [ $palabra $resto -eq 0  ]; then

    echo The number is even 

else 

    echo In the oddi ty is windom 

fi 

exit 0 



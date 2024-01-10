#!/bin/bash
#saco los grups del sistema de el usuario
grupo=$(groups)
numero=$(groups | wc -w)
let numero=numero-1
#declaro el array
declare -a grupos=($grupo)
echo "Los grupos del usuario "$USER" son:"
for repe in $(seq 0 $numero); do
    echo ${grupos[repe]}
    #los voy mostrando cada medio segundo
    sleep 0.5
done
exit 0

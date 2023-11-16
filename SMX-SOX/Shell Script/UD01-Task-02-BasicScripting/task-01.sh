#!/bin/bash

contar=0
comprobar=0

#busco las interfaces de que dispone cada ordenador
interface_eth=$(netstat -i | awk $'{print $1}' | grep ^en)
interface_wlo=$(netstat -i | awk $'{print $1}' | grep ^wl)

#compruebo si hay interface WI-FI
if ! [ -z $interface_wlo ]; then
    ip_wlo=$(ifconfig $interface_wlo | grep inet\ | awk $'{print $2}')
else
    ip_wlo=0
fi

#compruebo que la interfaz WI-FI tenga conexion si no la tiene le asigno un 0 
if [ -z $ip_wlo ]; then
    ip_wlo=0
fi

#compruebo si hay interface de eth
if ! [ -z $interface_eth ]; then
    ip_eth=$(ifconfig $interface_eth | grep inet\ | awk $'{print $2}')
fi

#los junto los dos separados por 1 espacio para el array
ip+=$(echo $ip_wlo" ")
ip+=$(echo $ip_eth)

declare -a ips=($ip)
repe=0
for u in ${ips[@]}; do
    if [[ $u =~ ^[172]{3}\.[29]{2}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then 
        ip_del_ordenador=$u
        comprobar=1
    fi
done
repe=0
if [ $comprobar -eq 0 ]; then
    for u in ${ips[@]}; do
        if [[ $u =~ ^[192]{3}\.[168]{3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
            ip_del_ordenador=$u
            comprobar=1
        fi
    done
fi

mascara=$(ip a | grep -w inet | tr -s " " | cut -d " " -f3 | head -n2 | tail -n1 | cut -d "/" -f2)

echo " La direccion IP: "$ip_del_ordenador
echo " La mascara: "$mascara

if [ $mascara -eq "24" ] ; then
    if [[ $ip_del_ordenador =~ ^[192]{3}\.[168]{3}\.[1]{1,3}\.[0-9]{1,3}$ ]]; then
        ping -c5 192.168.1.254
    fi

    if [[ $ip_del_ordenador =~ ^[192]{3}\.[168]{3}\.[2]{1,3}\.[0-9]{1,3}$ ]]; then
        ping -c5 192.168.2.254
    fi

    if [[ $ip_del_ordenador =~ ^[10]{2}\.[2]{1}\.[2]{1}\.[0-9]{1,3}$ ]]; then
        ping -c5 10.2.2.254
    fi
fi

if [ $mascara -eq "23" ]; then
    if [[ $ip_del_ordenador =~ ^[192]{3}\.[168]{3}\.[4]{1,3}\.[0-9]{1,3}$ ]]; then
        ping -c5 192.168.4.254
    fi
    if [[ $ip_del_ordenador =~ ^[172]{3}\.[29]{2}\.[0]{1}\.[0-9]{1,3}$ ]]; then
        ping -c5 172.29.0.1
    fi
fi
exit 0
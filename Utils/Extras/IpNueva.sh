#!/bin/bash

if ! [ -f prueba.csv ]; then
    touch prueba.csv
fi

ip=$(cat arp.log | cut -d " " -f1 | sort -u)
date >> prueba.csv
for i in $ip; do
    rc=0
    if [[ $i =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
	cat prueba.csv | grep -q "$i" || rc=1
	if [ $rc -eq 1 ]; then
	    echo $i >> prueba.csv
        fi
    fi
done





exit 0

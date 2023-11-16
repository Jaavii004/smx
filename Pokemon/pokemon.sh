#!/bin/bash

num=0

if [ $# -eq 2 ]; then
    while read line; do
        ((num++))
        if [ $num -eq 1 ]; then
            line1=$(echo $line | tr "," " ")
            incremen=0
            for i in $line1; do
                rc=0
                ((incremen++))
                echo $i | grep -q $2 || rc=1
                if [ $rc -eq 0 ]; then
                    nume=$incremen
                fi
            done
        fi
        if [ $num -gt 1 ]; then
            rc=0
            echo "$line" | grep -q $1 || rc=1
            if [ $rc -eq 0 ]; then
                Line=$line
            fi
        fi
    done < pokemon.csv
fi

compu=$(echo $Line | cut -d "," -f$nume)

echo $compu

if [ $compu -eq 1 ]; then
    echo "Es eficaz"
elif [ $compu -eq 2 ]; then
    echo "Es muy eficaz"
else
    echo "Es poco eficaz"
fi

exit 0
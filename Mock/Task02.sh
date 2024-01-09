#!/bin/bash
linia=0
cat MOCK_DATA.csv | while read line; do
    if [ $linia -ge 1 ];then
        txt=$(echo $line | cut -d "," -f7 | grep \\.txt)
        if [ -n "$txt" ]; then
            name=$(echo $line | cut -d "," -f2)
            correo=$(echo $line | cut -d "," -f4)
            echo "Name: "$name" ───>> Email: "$correo
        fi
    fi
    ((++linia))
done
exit 0
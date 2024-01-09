#!/bin/bash
linia=0
cat MOCK_DATA.csv | while read line; do
    divisores=0
    if [ $linia -ge 1 ];then
        numero=$(echo $line | cut -d "," -f1)
        for i in `seq $numero`;do
            if [ `expr $numero % $i` -eq 0 ];then
                let divisores+=1
                if [ $divisores -gt 2 ];then
                    break
                fi
            fi
        done
        if [ $divisores -eq 2 ]; then
            username=$(echo $line | cut -d "," -f8)
            file=$(echo $line | cut -d "," -f7)
            echo "Username: "$username" ───>> File: "$file
        fi
    fi
    ((++linia))
done
exit 0
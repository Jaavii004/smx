#!/bin/bash

for i in $(seq 1 301);do
    let num=num+i
done

echo "La suma de todos los numeros es: "$num

exit 0
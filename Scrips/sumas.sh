#!/bin/bash
#los 1000 primers
let suma=1+1
echo "1+1= "$suma
for mil in $(seq 2 1000); do
    let var=suma+mil
        echo $mil"+"$suma"=" $var
    let suma=var
sleep 0.1
done
exit 0

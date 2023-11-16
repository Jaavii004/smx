#!/bin/bash

Numero=3124
Contar=$(echo $Numero | wc -c)
let Contar=Contar-2

for i in $(seq 0 $Contar); do
    Pata=$(echo ${Numero:i})
    separo+=$(echo ${Pata:0:1})
    separo+=" "
done

vector=($separo)
#vector=("15" "12" "14" "30" "2" "4" "10")
for ((i=0;i<${#vector[@]};i++)) ;do
    for ((j=i;j<${#vector[@]};j++));do
        a=${vector[$i]}
        b=${vector[$j]}
        if [ $a -le $b ]; then
            aux=${vector[$i]}
            vector[$i]=${vector[$j]}
            vector[$j]=$aux
        fi
    done
done
for ((i=0;i<${#vector[@]};i++)); do
    echo ${vector[$i]};
    AscendenteJunto+="${vector[$i]}"
done
echo $AscendenteJunto
DescendenteJunto=$(echo $AscendenteJunto | rev)
echo $DescendenteJunto




exit 0

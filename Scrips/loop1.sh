#!/bin/bash
ruta="/home"
root=$(du /root/ | tail -1)
let root=$(echo $root | cut -d " " -f1)
if [ $root -le 102400 ];then
    echo "= Testing [ root ] -> Size correct :" $root"."
else
    echo "= Testing [ root ] -> Size exceeded :" $root"."
fi
for usuarios in $(ls $ruta); do
    rutacre=$ruta/$usuarios
    usuario=$(du $rutacre/ | tail -1)
    let numusi=$(echo $usuario | cut -d " " -f1)
if [ $numusi -le 102400 ];then
    echo "= Testing [ $rutacre ] -> Size correct :" $numusi"."
else
    echo "= Testing [ $rutacre ] -> Size exceeded :" $numusi"."
fi

done
exit 0

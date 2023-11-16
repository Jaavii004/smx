#!/bin/bash

echo
echo " ***Constante de Kaprekar***"
echo
read -p " Dime el numero que quieres calcular con la contaste de kaprekar: " Numero

echo
numi=$Numero
Resultado=0

while ! [ $Resultado -eq 6174 ]; do
	((repes++))
	Contar=$(echo $Numero | wc -c)
	let Contar=Contar-2
	separo=""
	for i in $(seq 0 $Contar); do
		Pata=$(echo ${Numero:i})
		separo+=$(echo ${Pata:0:1})
		separo+=" "
	done
	vector=($separo)
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
	Numero=""
	for ((i=0;i<${#vector[@]};i++)); do
		Numero+="${vector[$i]}"
	done
	Descendente=$(echo $Numero | rev)
	Resultado=$(echo "$Numero-$Descendente" | bc)
    guardado+=$(echo $Numero"_-_"$Descendente"_=_"$Resultado)
    guardado+=" "
	contar=$(echo $Resultado | wc -c)
	if [ $contar -eq 5 ]; then
		Numero=$Resultado
	else
		while ! [ $contar -eq 5 ]; do
			Resultado+=0
			contar=$(echo $Resultado | wc -c)
		done
		Numero=$Resultado
	fi
done
echo " El numero "$numi" necesita "$repes" interacciones: "
for i in $guardado; do
	echo -n "     "
	echo $i | tr "_" " "
done
exit 0

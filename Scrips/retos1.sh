#!/bin/bash

read -p "Que dia es tu cumpleaños: " cumple
read -p "Que mes as nacido: " mes
var=$(date +%d/%m)
var1=$(date +%d)
var2=$(date +%m)
if [ $var = $cumple/$mes ]; then
    echo "FELICIDADES!!!!"
    echo "POR SER EL DIA DE TU CUMPLEAYOS PUEDES ABRIR LA CAJA SORPRESA!!!"
    echo "(PD: NO HEMOS REPARADO EN GASTOS)"
else
	#ya a pasado el cumple
	if [ $var2 -gt $mes ]; then
		let bar=13-var2
		let barr=bar*30
		let non=barr-var1
		let mes=mes-1
		let meses=mes*30
		let hola=meses+cumple
		let sumas=hola+non
		echo "Anque falten "$sumas" dias para tu cumple, te queremos igual."
	fi
	if [ $var2 -eq $mes -a $cumple -lt $var1 ]; then
		let ror=var1-cumple
		let var3=360-ror
		echo "Anque falten "$var3" dias para tu cumple, te queremos igual."
	fi
	if [ $var2 -lt $mes ]; then
		let var4=30-var1
#		echo $var4 "var4"
		let var5=var4+cumple
		let var9=$var2+1
#		echo $var9 "var9"
		let var6=mes-var9
#		echo $var6 "var6"
		let var7=var6*30
#		echo $var7 "vaar7"
		let var8=var7+var5
		echo "Anque falten "$var8" dias para tu cumple, te queremos igual."
	fi
fi
exit 0

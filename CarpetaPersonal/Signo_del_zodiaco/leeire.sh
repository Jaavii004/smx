#!/bin/bash
echo "Te mostrare de que signo eres segun tu mes y dia."
echo
read -p "De que mes eres: " mes
read -p "Dia que naciste: " dia
while [ $mes != q ]; do
if [ $mes = diciembre -a $dia -ge 22 -a $dia -le 31 ]; then
	echo "---Eres capricornio.---"
fi
if [ $mes = enero -a $dia -ge 1 -a $dia -le 19 ]; then
	echo "---Eres capricornio.---"
fi
if [ $mes = enero -a $dia -ge 20 -a $dia -le 31 ]; then
	echo "---Eres acuario.---"
fi
if [ $mes = febrero -a $dia -ge 1 -a $dia -le 18 ]; then
	echo "---Eres acuario.---"
fi
if [ $mes = febrero -a $dia -ge 19 -a $dia -le 28 ]; then
	echo "---Eres piscis.---"
fi
if [ $mes = marzo -a $dia -ge 1 -a  $dia -le 20 ]; then
	echo "---Eres piscis.---"
fi
if [ $mes = marzo -a $dia -ge 21 -a $dia -le 31 ]; then
	echo "---Eres aries.---"
fi
if [ $mes = abril -a $dia -ge 1 -a $dia -le 19 ]; then
        echo "---Eres aries.---"
fi
if [ $mes = abril -a $dia -ge 20 -a $dia -le 30 ]; then
        echo "---Eres tauro.---"
fi
if [ $mes = mayo -a $dia -ge 1 -a $dia -le 21 ]; then
        echo "---Eres tauro.---"
fi
if [ $mes = mayo -a $dia -ge 22 -a $dia -le 31 ]; then
        echo "---Eres geminis.---"
fi
if [ $mes = junio -a $dia -ge 1 -a $dia -le 20 ]; then
        echo "---Eres geminis.---"
fi
if [ $mes = junio -a $dia -ge 21 -a $dia -le 30 ]; then
        echo "---Eres cancer.---"
fi
if [ $mes = julio -a $dia -ge 1 -a $dia -le 22 ]; then
        echo "---Eres cancer.---"
fi
if [ $mes = julio -a $dia -ge 23 -a $dia -le 31 ]; then
        echo "---Eres leo.---"
fi
if [ $mes = agosto -a $dia -ge 1 -a $dia -le 22 ]; then
        echo "---Eres leo.---"
fi
if [ $mes = agosto -a $dia -ge 23 -a $dia -le 31 ]; then
        echo "---Eres virgo.---"
fi
if [ $mes = septiembre -a $dia -ge 1 -a $dia -le 22 ]; then
        echo "---Eres virgo.---"
fi
if [ $mes = septiembre -a $dia -ge 23 -a $dia -le 30 ]; then
        echo "---Eres libra.---"
fi
if [ $mes = octubre -a $dia -ge 1 -a $dia -le 22 ]; then
        echo "---Eres libra.---"
fi
if [ $mes = octubre -a $dia -ge 23 -a $dia -le 31 ]; then
        echo "---Eres escorpio.---"
fi
if [ $mes = noviembre -a $dia -ge 1 -a $dia -le 21 ]; then
        echo "---Eres escorpio.---"
fi
if [ $mes = noviembre -a $dia -ge 21 -a $dia -le 30 ]; then
        echo "---Eres sagitario.---"
fi
if [ $mes = diciembre -a $dia -ge 1 -a $dia -le 21 ]; then
        echo "---Eres sagitario.---"
fi
echo
read -p "De que mes eres: " mes
if [ $mes != q ];then
	read -p "De que naciste." dia
fi
done
exit 0

#!/bin/bash
#inicializamos las variables a 0
R=0
L=0
vez=0
#comprobamos si esta el archivo y si esta lo borramos.
if [ -f resultadosdeping_pong ]; then
    rm resultadosdeping_pong
fi
echo -e "\nEL JUEGO DEL PIC-POC-PONG!\n"
#vamos a leer el archivo
cat pong | while read lineas; do
    repeticion=0
    for juego in $lineas;do
        ((repeticion ++))
        if [ $repeticion -ge 2 ]; then
            ((QQ ++))
            let comprobar=$QQ%2
            #si es par el numero le da el punto al jugador de la izquierda.
            if [ $comprobar = 0 ]; then
                if [ $juego = "PONG!"  ]; then
                    let R=R+1
                    QQ=0
                fi
            fi

            #si es impar el numero le da el punto al jugador de la derecha.
            if [ $comprobar = 1 ]; then
                if [ $juego = "PONG!"  ]; then
                    let L=L+1
                    QQ=0
                fi
            fi
        fi

    done

    #solo muetra cuando a acabado
    if [ $repeticion -ge 2 ]; then
        resultado=" "
        resultado+="${R} ${L}"
        echo $resultado
        echo $resultado >>resultadosdeping_pong
    fi
    R=0
    L=0
done

exit 0

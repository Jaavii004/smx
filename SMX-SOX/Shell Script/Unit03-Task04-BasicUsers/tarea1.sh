#/bin/bash

Usuario=$1
palabra=$2
Ruta=$3
rc=0
comp=0
comprobar=0
archivos=(Workspace Workspace/config Workspace/bin Workspace/source Workspace/rsrc)

if [ $# -ge 2 ]; then
    cat /etc/passwd | cut -d ":" -f1 | grep -wq $Usuario || rc=1
    if [ $rc -eq 0 ];then
        echo " El usuario "$Usuario" -- Existe"
        if [ $palabra = "replenish" ];then
            echo "Has elegido --> replenish"
            comprobar=1
            echo " ** Has elegido replenish"
            if [ -d /home/$Usuario/Workspace ]; then
                echo "Existe el directorio "
                echo "Vamos a borrarlo y lo volvemos a crear"
                rm -r /home/$Usuario/Workspace
                for i in ${archivos[@]};do
                    mkdir /home/$Usuario/$i
                    touch /home/$Usuario/$i/sample.txt
                done
            else
                echo "Vamos a crear las carpetas"
                for i in ${archivos[@]};do
                    mkdir /home/$Usuario/$i
                    touch /home/$Usuario/$i/sample.txt
                done
            fi
        fi
        if [ $palabra = "test" ]; then
            echo " Has elegido --> test"
            comprobar=1
            if [ $# -eq 3 ]; then
                if [ -d $Ruta ]; then
                    rm -rf /tmp/lista
                    find $Ruta -not -path "*/.*" -perm -400 -user $Usuario | sed '/^ *$/d' >> /tmp/lista
                    while read line; do
                        echo $line" --> Tiene permisos de lectura por el usuario "$Usuario
                        comp=1
                    done < /tmp/lista
                    if [ $comp -eq 0 ]; then
                        echo " La ruta [ "$Ruta" ] no contiene archivos con permisos de lectura para "$Usuario
                    fi
                fi
                if [ -f $Ruta  ]; then
                    echo " La ruta introducida es un archivo"
                fi
            else
                echo " Debes introducir 3 argumentos"
            fi
        fi
        if [ $palabra = "clear" ]; then
            echo " Has ekegido --> clear"
            comprobar=1
            if [ -d $Ruta ]; then
                echo " La ruta existe vamos a borrarla --> "$Ruta
                rm -r $Ruta
            else
                echo " ** [ ERROR ] La ruta no existe --> "$Ruta
            fi
        fi

        if [ $comprobar -eq 0 ];then
            echo
            echo " ** [ Error ] no has introducido un segundo argumento correcto "
            echo " Tienes estas opciones:"
            echo "   - replenish"
            echo "   - test"
            echo "   - clean"
        fi
    else
        echo " ** [ ERROR ] - El usuario "$Usuario" no existe"
    fi
else
    echo " ** [ ERROR ] -- Debes introducir dos argumentos minimo"
fi

exit 0


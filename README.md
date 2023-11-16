# Repositorio para SOX

Este repositorio contiene recursos y scripts para las diferentes tareas y configuraciones
relacionadas con los diferentes servicios y aplicaciones vistos en SOX (aka. **Sistemas Operativos en Red**).

## Lenguaje de programacion

###   Bash

<img src="https://lignux.com/wp-content/uploads/2018/06/bash2.png" alt="Bash" width="100"/>

## Estructuras de programación habituales

### Bucles

*While*

```shell
cat /RUTA_AL_FICHERO| while read line; do
    echo " * Working with $line"
done
```

*For*

```shell
for f in $(seq 1 100); do
    echo " * Working with $f"
done
```

*If*

```shell
if [ CONDICION ]; do
    echo " The condition has been fulfilled "
else
    echo " The condition has not been fulfilled "
done
```

### Funciones

*Funcion*

```shell
mi_primera_funcion(){
    commands
}
```


## Apartados

* [ GRUB Protegido ](./GRUB-Protected/)

* [ Acepta el Reto ](./AceptaElReto/)

* [ NFS ](./NFS/)

* [ Apartado de SMX de primero ](./SMX-1/)

* [ Script para buscrar IPs duplicadas ](./Utils/)

* [ Programacion de SOX (segundo) ](./SMX-SOX/)

* [ Redes de primero ](./Redes/)

* [ SAMBA ](./SAMBA/)

## AlgoDeHumor

![XKCD - Real Programmers](https://imgs.xkcd.com/comics/real_programmers.png)

## Enlaces de Interés

* [Pagina Oficial de Debian](https://www.debian.org/)
* [Pagina Oficial de Ubuntu](https://ubuntu.com/)
* [Pagina Oficial de RedHat](https://www.redhat.com/es/technologies/linux-platforms/enterprise-linux)


 

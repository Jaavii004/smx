# FTP CONFIGURACION

## Configuracion de VSFTPD

Empezaremos actualizando la maquina
~~~
sudo apt update && sudo apt full-upgrade --yes
~~~

A continuacion instalaremos <code>vsftpd</code> en el servidor
~~~
sudo apt install vsftpd
~~~

Permitir usuarios locales <code>/etc/vsftpd.conf</code> :
~~~
local_enable=YES
~~~

Despues iremos a la linea 31 del archivo <code>/etc/vsftpd.conf</code> y descontaremos esta linea asi quedaria
~~~
write_enable=YES
~~~

Cambiamaremos la mascara por 777 en el archivo <code>/etc/vsftpd.conf</code> que se encuentra en la linea <code>35</code>
~~~
local_umask=777
~~~


Vamos a descomentar tambien las siguientes lineas en el archivo <code>/etc/vsftpd.conf</code> estan en la linea <code>122 y 123</code>
~~~
chroot_local_user=YES
chroot_list_enable=YES
~~~

Descomentaremos la linea <code>125</code> y añaderemos debajo la suigiente linea en el archivo <code>/etc/vsftpd.conf</code>
La primera es la que descomentaremos y la segunda la añadiremos
~~~
chroot_list_file=/etc/vsftpd.chroot_list
allow_writeable_chroot=YES
~~~
Creamos el fichero 
~~~
sudo nano /etc/vsftpd.chroot_list
~~~
Y añadimos lo siguiente
~~~
root:x:0:0:root:/root:/bin/bash
~~~

Ahora iremos a <code>152</code> y cambiaremos de <code>no</code> a <code>yes</code>
~~~
ssl_enable=YES
~~~

Y al final añaderemos estas lineas:
~~~
allow_writeable_chroot=YES
user_sub_token=$USER
local_root=/home/$USER/public_html
~~~

Y ahora reiniciaremos el servidor:
~~~
sudo service vsftpd restart
~~~

En el cliente instalaremos <code>Filezilla</code>
~~~
sudo apt update install filezilla
~~~


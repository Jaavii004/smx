# APACHE configuration

## Configuracion basica de apache

Empezaremos actualizando la maquina
~~~
sudo apt update && sudo apt full-upgrade --yes
~~~

A continuacion instalaremos <code>APACHE</code>
~~~
sudo apt install apache2
~~~

Haremos una copia del archivo de configuracion
~~~
sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/NombreQueQueramos.conf
~~~
En mi caso:
~~~
sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/Dominio.conf
~~~

Dentro del archivo pondremos el dominio que nos demande en mi caso pondre
~~~
ServerName www.example.com
~~~

Y activaremos el archivo
~~~
sudo a2ensite Dominio.conf
~~~

Y reiniciarianos el servidor:
~~~
sudo service apache2 restart
~~~

Y ahora acederemos al servidor mediante el server name que en mi caso es <code>www.example.com</code> 

Añaderemos el archivo <code>/etc/hosts</code> y añadiremos lo siguiente
~~~
Server_IP  www.example.com
~~~

Y nos aparece la pagina que hemos creado 


Ahora vamos a realizar el de SSL que sera el de <code>https</code>
Activaremos el ssl con el siguiente comando
~~~
sudo a2enmod ssl
~~~

Y reiniciarianos el servidor:
~~~
sudo service apache2 restart
~~~

Y ahora vamos a hacer el archivo para el ssl
~~~
sudo cp /etc/apache2/sites-available/default-ssl.conf /etc/apache2/sites-available/https.conf
~~~

Y activaremos el archivo
~~~
sudo a2ensite https.conf
~~~

Y reiniciarianos el servidor:
~~~
sudo service apache2 restart
~~~


Vamos a crear los certificados con el siguiente comando que pondremos los certificados donde se encuentran los originales
~~~
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache.key -out /etc/ssl/certs/apache.pem
~~~

Y cambiaremos esas lineas del archivo de  /etc/apache2/sites-available/https.conf para cambiar los certificados
~~~
SSLCertificateFile      /etc/ssl/certs/apache.pem
SSLCertificateKeyFile /etc/ssl/private/apache.key
~~~

Y ahora deberiamos de poder acceder con <code>https://</code>



Ahora para aceder a public html tendremos que activar el modulo
~~~
sudo a2enmod userdir
~~~

Y ya pondremos 
~~~
IP/~usu/
~~~


Muchas gracias ;)
Javier Puertas

Entraremos a el archivo <code>/etc/apache2/sites-available/https.conf</code>

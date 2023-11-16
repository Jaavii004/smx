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
sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/Digest.conf
~~~

Activaremos el digest con el siguiente comando:
~~~
sudo a2enmod auth_digest
~~~

Y reiniciarianos el servidor:
~~~
sudo service apache2 restart
~~~

Ya teniendo el digest activado vamos a configurarlo
Nos vamos al fichero <code>/etc/apache2/sites-available/Digest.conf</code> y añadiremos lo siguiente
~~~
        ServerName www.repaso.edu

        DocumentRoot /var/www/html/repaso/
        DirectoryIndex test.htm

        <Directory /var/www/html/repaso/>
                AuthType Digest
                AuthName "test"
                AuthDigestDomain /
                AuthUserFile "/etc/apache2/password"
                Require valid-user
        </Directory>
~~~

Y activaremos el archivo
~~~
sudo a2ensite Digest.conf
~~~

Crearemos el directorio <code>/var/www/html/repaso/</code> y añadimos el archivo <code>test.htm</code> y pondremos algo dentro

A continuacion vamos a crear las contraseñas para poder acceder al digest y lo haremos con el siguiente comando:
~~~
sudo htdigest -c /ruta/al/archivo/de/contraseña "AuthName" Usuario
~~~

En mi caso este:
~~~
sudo htdigest -c /etc/apache2/password "test" smx
~~~

Y reiniciarianos el servidor:
~~~
sudo service apache2 restart
~~~

Y ahora acederemos al servidor mediante el server name que en mi caso es <code>www.repaso.edu</code> 

Añaderemos el archivo <code>/etc/hosts</code> y añadiremos lo siguiente
~~~
Server_IP  www.repaso.edu
~~~
Tambien podriamos entrar poniendo lo siguiente
~~~
http://ServerIP/html/repaso
~~~

Y nos aparece la pagina que hemos creado 

Muchas gracias ;)
Javier Puertas

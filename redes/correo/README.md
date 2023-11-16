# Correo

Crear los certificados
~~~
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/correo.key -out /etc/ssl/certs/correo.crt
~~~

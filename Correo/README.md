# Servidor Postfix

## Configuracion del postfix

Empezaremos instalando Postfix
~~~
sudo apt install postfix
~~~

~~~
sudo dpkg-reconfigure postfix
~~~
![FOTO](./img/1.png)
![FOTO](./img/2.png)
![FOTO](./img/3.png)
![FOTO](./img/4.png)
En esta marcaremos NO
![FOTO](./img/5.png)
Lo dejamos en blanco
![FOTO](./img/6.png)
51200000
![FOTO](./img/7.png)
![FOTO](./img/8.png)
![FOTO](./img/9.png)

**Aqui ya tenemos la configuracion del postfix**

## Archivo alises

Entramos en el archivo <code>/etc/alises</code> comentaremos la linea de postmaster y añadimos una linea poniendo
~~~
root: javier
~~~

![FOTO](./img/10.png)


## Mailname

El archivo de la siguiente ruta tiene que tener nuestro dominio
~~~
/etc/mailname
~~~
![FOTO](./img/11.png)

## Instalacion de dovecot

Ahora ejecutamos el siguiente comando que instalara el dovecot
~~~
sudo apt install dovecot-imapd dovecot-pop3d
~~~

## Configuracion de Dovecot

Para empezar vamos a hacer una copia de seguridad de este archivo: <code>/etc/dovecot/dovecot.conf</code>

Y ahora añadiremos estas tres lineas al archivo: <code>/etc/dovecot/dovecot.conf</code>
~~~
protocols = imap imaps pop3 pop3s
disable_plaintext_auth = no
mail_location = mbox:~/mail:INBOX=/var/mail/%u
~~~

Ahora reiniciaremos los servicios
~~~
sudo service postfix restart
~~~
~~~
sudo service dovecot restart
~~~

Para poder comprobar que tengamos los puertos en escucha del dovecot ejecutaremos el siguiente comando
~~~
sudo netstat -putan | grep dovecot
~~~
![FOTO](./img/12.png)
 
## Certificados

Ejecutaremos el siguiente comando para crear el certificado
~~~
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/correo.key -out /etc/ssl/certs/correo.crt
~~~

Ahora vamos a cambiar los certificados del arcivo <code>/etc/postfix/main.cf</code>
**Hay que sustituir las lineas excepto la ultima que tenemos que añadirla**

~~~
# TLS parameters COBARDES
smtpd_tls_cert_file=/etc/ssl/certs/correo.crt
smtpd_tls_key_file=/etc/ssl/private/correo.key
smtpd_tls_security_level=may
~~~
![FOTO](./img/14.png)

Ahora reiniciaremos los servicios
~~~
sudo service postfix restart
~~~
~~~
sudo service dovecot restart
~~~

## Thunderbird

Ahora accederemos al correo desde el  thunderbird

Si hace falta instalarlo se hace con:
~~~
sudo apt install thunderbird
~~~

Ahora vamos a acceder al server desde el thunderbird
![FOTO](./img/13.png)


## Certificados

Ejecutaremos el siguiente comando para crear el certificado
~~~
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/correo.key -out /etc/ssl/certs/correo.crt
~~~

Ahora vamos a cambiar los certificados del arcivo <code>/etc/postfix/main.cf</code>
**Hay que sustituir las lineas excepto la ultima que tenemos que añadirla**

~~~
# TLS parameters COBARDES
smtpd_tls_cert_file=/etc/ssl/certs/correo.crt
smtpd_tls_key_file=/etc/ssl/private/correo.key
smtpd_tls_security_level=may
smptd_use_tls=yes 
~~~
![FOTO](./img/14.png)

Ahora reiniciaremos los servicios
~~~
sudo service postfix restart
~~~
~~~
sudo service dovecot restart
~~~





# Tarea vsftd

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/correo.key -out /etc/ssl/certs/correo.pem

Tendremos que tener estas lineas descomentadas

~~~
listen=NO
listen_ipv6=YES
anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=777
dirmessage_enable=YES
use_localtime=YES
xferlog_enable=YES
connect_from_port_20=YES
ftpd_banner=Welcome to Real mmadrid.
chroot_local_user=YES
chroot_list_enable=YES
chroot_list_file=/etc/vsftpd.chroot_list
allow_writeable_chroot=YES
secure_chroot_dir=/var/run/vsftpd/empty
pam_service_name=vsftpd
rsa_cert_file=/etc/ssl/certs/correo.pem
rsa_private_key_file=/etc/ssl/private/correo.key
ssl_enable=YES
allow_writeable_chroot=YES
user_sub_token=$USER
local_root=/home/$USER/public_html
~~~

Y en erchivo **/etc/vsftpd.chroot_list**  meteremos esta linea

~~~
root:x:0:0:root:/root:/bin/bash
~~~

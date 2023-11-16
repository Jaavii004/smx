# Tarea de SAMBA

### **Bienvenidos a la tarea de SAMBA**

A continuacion veremos como hacer **SAMBA** utilizando un **servidor de Windows** (Windows 10 server con interfaz grafica) y una maquina a la que se compartara que sera **Linux**(en mi caso usare una Ubuntu 22.04)

## Pasos a seguir 

* Comenzaremos instalando las **dos** maquinas (Una windows y otra Linux)
* A continuacion entranmos en la maquina de **windows server** y instalaremos desde servicios el que pone **SAMBA** 
* Ahora vamos a seguir en la maquina de **Windows** y nos iremos a el **explorador de archivos** y elegiremos la carpeta que queremos compartir (en su defecto la crearemos)
* Despues ya estando en la carpeta que queremos compartir haremos clic derecho y clicaremos sobre propiedades despues clicaremos en compartido y le daremos a compartir
* Ya tendriamos todo preparado en nuestro Windows para compartir solo nos faltaria saber nuestra ip de la maquina windows y debemos quedarnos para usarla posteriormente **Es muy importante que esten en la misma red ya que si no no se veran y no podremos disfrutar de nuestro samba**
* Ahora vamos a pasar a nuestra maquina Linux que abriremos la terminal (podemos abrirla con la convinacion de teclas: **ctrl+alt+t** ) y escribiremos el comando para montarlo (Alomejor es necesario instalar el paquete **_mount.cifs_** se instala con  el comando: **"sudo apt install mount.cifs"**  ) **"sudo mount.cifs //Ip_De_La_Maquina_WIN/Carpeta_Que_Compartimos Punto_De_Montaje -o user=USUARIO,password=PASSWORD"**
* Ya tendriamos nuestro SAMBA montado pero si se apaga el ordenador de Linux no lo seguiremos teniendo montado asi que vamos a hacer que se **monte automaticamente**
* Para que se monte automaticamente lo que vamos a hacer es un archivo donde guardaremos el usuario y la contraseña lo guardaremos en la carpeta **/root/** y lo llamaremos **.credentials** (Ponemos un punto con el fin de que este oculto para que no se vea) aqui tienes un ejemplo [ fichero credentials ](./.credentials)
* Para conseguir que se **monte atomaticamente** lo que vamos a hacer es acceder al archivo **fstab** que se encuentra en la ruta **/etc/fstab** (Necesitaremos priviligios de **ROOT** ) lo que haremos es añadir al final del archivo la siguiente linea **"//Ip_De_La_Maquina_WIN/Carpeta_Que_Compartimos Punto_De_Montaje cifs   credentials=/root/.credentials    0    0"** y aqui podrias ver un ejemplo de fichero [ fstab ](./fstab)

Y con esto ya tendriamos nuestro **SAMBA** 

-  **Javier Puertas**
-  **Author : javierpuertas2004@gmail.com**
-  **User GitLab : jaavii_04**

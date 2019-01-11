#Unidad Formativa uf1466

 #El crontab nos sirve para  automatizar diversas tareas, es un archivo de texto que guarda una lista 
 #de comandos a ejecutar en un determinado tiempo, indicado por el usuario y se ejecute en una determinada hora 


#ejecutas el comando crontab -e 
* 23 * * *

#con este comando haremos una copia de seguridad de los documentos personales de los usuarios
rsync -av /home /backups
#  con este comando haremos una copia de seguridad de los archivos y aplicaciones publicados 
#en el servidor http
 rsync -av /var/www/html /backups

#con este comando haremos una copia de seguridad de la base de datos clientes 
mysqldump -uroot -psecret clientes > clientes.sql

 #con este comando haremos una copia de seguridad del wordpress del servidor Mysql local
 mysqldump -uroot -psecret wordpress > wordpress.sql
 
 







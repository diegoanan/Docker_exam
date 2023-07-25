# Usamos una imagen base de Ubuntu
FROM ubuntu:latest

# Instalamos apache y ssh
RUN apt-get update && apt-get install -y apache2 openssh-server

# Creamos un usuario para correr la aplicación
RUN useradd -ms /bin/bash appuser

## Agregamos contraseña al usuario appuser
RUN echo 'appuser:password' | chpasswd

# Levantamos los servicios de apache y ssh
CMD service apache2 start && service ssh start && tail -f /dev/null

# Copiamos el contenido de una página web de ejemplo para visualizar el contenido
COPY ./ejemplo/* /var/www/html/

# Exponemos los puertos para apache y ssh
EXPOSE 80 22


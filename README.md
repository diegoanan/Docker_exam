```sh
Facultad de Ingenieria
Diplomado en Ciberseguridad 13G
Módulo 3.4
Docker examen
Diego Felix Angeles Angeles
```
# Docker_examen

Instalacion de docker en el siguiente link oficial:
> https://docs.docker.com/engine/install/ubuntu/

Dar permisos al usuario para usar docker sin usar 'sudo'

```sh
sudo gpasswd -a $USER docker
```

## Docker hub link
> https://hub.docker.com/r/diegoanan/exam_pg

hacer pull a la imagen en local con:
```sh
docker pull diegoanan/exam_pg
```

Creacion de la imagen en docker
```sh
docker build -t diegoanan/exam_pg .

```
Ejecucion de contenedor con exposicion de puertos
* Exponeel puerto 80 del contenedor al puerto 80 del equipo anfitrion
* Exponeel puerto 22 del contenedor al puerto 2222 del equipo anfitrion
```sh
docker run -d -p 80:80 -p 2222:22 --name exam diegoanan/exam_pg 

```
Cosulta de pagina ejemplo en el siguiente link:

> http://localhost

Enlace al docker por ssh por comando:
* usuario: appuser
* password: password

```sh
ssh appuser@localhost -p 2222
```

Detener el contenedor
```sh
docker container stop exam
```
Remover contenedor

```sh
docker container rm exam
```

remover imagen
```sh
docker image rm exam diegoanan/exam_pg
```
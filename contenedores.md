# contenedores de sistemas gestores de base de datos


![imagen docker](./img/doker-%20doki.png)
## imagenes
> comando para cada imagen

- Comando para descargar imagen de posgres 

```
docker pull postgres:14.22 -trixie
```
-descargar imagen de tutorial de docker
````
docker pull docker/getting-started
````
## cración de contenedores 
````
| **Docker images** |_muestra todas las imagenes_ |
````
- -d detach (background)
-  -p puerto ( el primer numero no se cambio el segundo si podemos cambiarlo)
### contenedor de tutorial de docker
```` docker
docker run -d -p 80:80do docker/getting-started:latest
docker run -d -p 80:80 bbb88
````
## Contenedor de mariaDB sin volumen
```` docker
docker run -d --name Server-MariadbG1 -p 3343:3306 -e MARIADB_ROOT_PASSWORD=123456 e0236
````
## Contenedor de mariaDB con volumen
```` docker
docker volume create v-mariadbg1
docker run -d --name Server-MariadbG1 -p 3343:3306 -e MARIADB_ROOT_PASSWORD=123456 -v v-mariadbg1:/var/lib/mysql e0236
````

## Contenedor de mariaDB con volumen
```` docker
docker volume create v-postgresg1
docker run -d --name Server-PosttgresG1 -p 5455:5432 -e POSTGRES_PASSWORD=123456 -v v-postgresg1:/var/lib/postgresql/data bbb885
````
## comndos de docker
| Comando | Descripción|
| :--- | :--- |
| **Docker--Version** |_Mustra la version del docker_ |
| **Docker pull nombre_imagen** |_descargar una imagen de doker hub_ [Docker hub](https://hub.docker.com/) |
| **Docker images** |_muestra todas las imagenes_ |
| **Docker run** |_crear un contenedor_ |
| **Docker ps** |_visualiza los contenedores que estan en ejecución_ |
| **Docker container ls** |_visualiza los contenedores_ |
| **Docker ps -a** |_visualiza todos los contenedores en ejecucion_ |
| **Docker container ls -a** |_visualiza los contenedores_ |
| **Docker rm nombre_contenedor/ id** |_borra el contenedor_ |
| **Docker run** |_crea un contenedor_ |
| **Docker stop nombre o id** |_detiene el contenedor_ |
| **Docker start nombre o id** |_inicia el contenedor_ |
| **Docker rm nombre o id** |_elimina un contenedor que no esta en ejecución_ |
| **Docker rm -f nombre o id** |_elimina un contenedor que esta en ejecución_ |
| **Docker volume ls** |_mostrar los volumenes que existen en el docker_ |


| Fila 3, Dato 1 | Fila 3, Dato 2 |
| Fila 4, Dato 1 | Fila 4, Dato 2 |

USUARIOS CON MAYOR PRRIVILEGIOS
MARIA DB  ROOT
POSTGRES  POSTGRES
SQ    SUPER ADMIN
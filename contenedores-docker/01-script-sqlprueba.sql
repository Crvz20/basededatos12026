

--CREAR BASE DE DATOS PRUEBA G1

--permite crear una base de datos (SQL-LDD)
CREATE DATABASE prueba1;
--Sirve para utilizar la base de datos
USE prueba1;

--crear una tabla (SQL-LDD)
CREATE TABLE alumno(
id INT NOT NULL, 
nombre VARCHAR (20) NOT NULL,
edad INT NOT NULL,
matricula INT NOT NULL,
direccion VARCHAR (30) NOT NULL,
CONSTRAINT pk_alumno
PRIMARY KEY (id),
CONSTRAINT unique_matricula
UNIQUE (matricula)
);

--agregar dos alumnos (SQL-LMD)
INSERT INTO alumno (id, nombre, edad, matricula, direccion)
VALUES (1,'arcadia', 65,123456, 'Calle del infierno');
       (2, 'marnia', 19, 1234589, 'conocido Barrio');

--Seleccionar los alumnos almacenados

SELECT *
FROM alumno;

--Cambiar el nombre de arcadia
UPDATE alumno
SET nombre='monico'
WHERE id =1;

-- Cosnstruccion de base de datos con SQL-LDD ( CREATE, ALTER, DROP)*/

--Crear una base de datos
CREATE DATABASE empresa_patito;
GO

--UTILIZAR LA BASE DE DATOS 
USE empresa_patito;
GO

--Crear una tabla
CREATE TABLE alumno(
	alumno_id INT,
	nombre VARCHAR(30),
	apellido_paterno VARCHAR(20),
	apellido_materno VARCHAR(20),
	fecha_nacimiento DATE,
	correo VARCHAR(25)
);
GO

INSERT INTO alumno
VALUES (1, 'Domingo', 'Sarabia', 'Ramirez', '1942-03-24', 'domingo@domingo.com');
VALUES (1, 'Patricio', 'Lopez', 'Nopales', '1952-04-26', 'pato@patito.com');

SELECT*

DROP TABLE alumno;

--Restricciones

CREATE TABLE alumno(
	alumno_id INT,
	nombre VARCHAR(30),
	apellido_paterno VARCHAR(20),
	apellido_materno VARCHAR(20),
	fecha_nacimiento DATE,
	correo VARCHAR(25)
	);
	GO

	DROP TABLE  alumno
	GO

	INSERT INTO alumno
VALUES (1, 'Domingo', 'Sarabia', 'Ramirez', '1942-03-24', 'domingo@domingo.com');

	INSERT INTO alumno
VALUES (2, 'Patricio', 'Lopez', 'Nopales', '1952-04-26', 'pato@patito.com');


CREATE TABLE alumno(
	alumno_id INT NOT NULL,
	CONSTRAINT pk_alumno,
	PRIMARY KEY alumno_id,
	nombre VARCHAR(30),
	apellido_paterno VARCHAR(20),
	apellido_materno VARCHAR(20),
	fecha_nacimiento DATE,
	correo VARCHAR(25)
	);
	GO
		INSERT INTO alumno
VALUES (1, 'Domingo', 'Sarabia', 'Ramirez', '1942-03-24', 'domingo@domingo.com');

	INSERT INTO alumno
VALUES (1, 'Patricio', 'Lopez', 'Nopales', '1952-04-26', 'pato@patito.com');
GO

DROP TABLE  alumno
	GO


	CREATE TABLE alumno(
	alumno_id INT NOT NULL,
	nombre VARCHAR(30),
	apellido_paterno VARCHAR(20),
	apellido_materno VARCHAR(20),
	fecha_nacimiento DATE,
	correo VARCHAR(25)
	CONSTRAINT pk_alumno  -- ES UNA RESTRINGCION
	PRIMARY KEY (alumno_id)
	);
	GO

	INSERT INTO alumno
VALUES (1, 'Domingo', 'Sarabia', 'Ramirez', '1942-03-24', 'domingo@domingo.com');

	INSERT INTO alumno
VALUES (2, 'Patricio', 'Lopez', 'Nopales', '1952-04-26', 'pato@patito.com');
GO

--primary key con IDENTITY

CREATE TABLE categoria (
    categoria_id INT IDENTITY(1,1) PRIMARY KEY, -- El IDENTITY siempre debe ser un entero
    nombre VARCHAR(25) NOT NULL,
    activo BIT NOT NULL
);
GO

INSERT INTO categoria
VALUES ('carnesfrias',1);

INSERT INTO categoria
VALUES ('carnesfrias',1);

SELECT *
FROM categoria

DROP TABLE categoria

CREATE TABLE categoria (
    categoria_id INT IDENTITY(1,1)
        CONSTRAINT pk_categoria
        PRIMARY KEY (categoria_id),
    nombre VARCHAR(25) NOT NULL UNIQUE,
	CONSTRAINT uq_categoria_nombre 
	UNIQUE
    activo BIT NOT NULL
);
GO

CREATE TABLE categoria (
    categoria_id INT IDENTITY(1,1),
    nombre VARCHAR(25) NOT NULL,
    activo BIT NOT NULL,

    CONSTRAINT pk_categoria
        PRIMARY KEY (categoria_id),

    CONSTRAINT uq_categoria_nombre
        UNIQUE (nombre)
);
GO

--Alter Table
-- Agregar una columna
USE pruebaatributos;
GO
FROM alumno;
TRUNCATE TABLE alumno;

--Muestra los datos de una tabla
SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH,
    IS_NULLABLE
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_NAME; - 'alumno';

-- Agregar una columna
ALTER TABLE alumnp
ADD telefono VARCHAR(20) NOT NULL;
GO

--Agregar mas de una columa
ALTER TABLE alumno
ADD 
curp VARCHAR (18),
matricula VARCHAR (13) NOT NULL;

--mODIICAR UN TIPO DE DATO
ALTER TABLE alumno
ALTER COLUMN telefonoVARCHAR (30);
GO

--Agregar restricciones
--Primary key

--Este codigo crea una tabla con 0 registros aparir de otra existente (Copia la estructura pero sin restrigciones)
SELECT TOP* 0
INTO alumno2
FROM alumno;

--Esta consulta obtiene el nombre de las construcciones y su tipo de una tabla espesifica
SELECT 
    o.name AS nombre_restriccion,
    o.type_desc AS tipo_restriccion
FROM sys.objects AS o
WHERE O.parent_object_id= OBJECT_ID('alumno2')
AND o. type IN ('PK','F','UQ', 'C','D')
ORDER BY o. type_desc;

--Muestra los datos de una tabla
SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH,
    IS_NULLABLE
     FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_NAME = 'alumno2';

--primary key
ALTER TABLE alumno2
ADD CONSTRAINT pk_alumno2
PRIMARY KEY (num_alumno);

--Crear una tabla para la foren key
CREATE TABLE carrera(
carrera_id INT NOT NULL IDENTITY(1,1)
CONSTRAINT pk_carrera
PRIMARY KEY,
nombre VARCHAR(25) NOT NULL
);
ALTER TABLE alumno2
ADD carrera_id INT;

ALTER TABLE alumno2
ADD CONSTRAINT fk_alumno2_carrera
FOREIGN KEY (carrera_id)
REFERENCES carrera (carrera_id)
ON DELETE CASCADE
ON UPDATE NO ACTION;

--Agregar un check
ALTER TABLE alumno2
ADD CONSTRAINT ck_alumno2_telefono
CHECK (Telefono LIKE '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]');

--Agregar un default
ALTER TABLE alumno2
ADD activo BIT NOT NULL;

ALTER TABLE alumno2
ADD CONSTRAINT df_alumno2_activo
DEFAULT 1
FOR activo;

--UNIQUE
ALTER TABLE alumno2
ADD CONSTRAINT unique_alumno2_matricula
UNIQUE (matricula);

--Eliminar restricciones
SELECT 
    o.name AS nombre_restriccion,
    o.type_desc AS tipo_restriccion
FROM sys.objects AS o
WHERE O.parent_object_id= OBJECT_ID('alumno2')
AND o. type IN ('PK','F','UQ', 'C','D')
ORDER BY o. type_desc;

--Eliminar foregn key
ALTER TABLE alumno2
DROP CONSTRAINT fk_alumno2_carrera;

--Eliminar primary key 
ALTER TABLE alumno2
DROP CONSTRAINT pk_alumno2;

ALTER TABLE carrera
DROP CONSTRAINT pk_carrera;

--Eliminar los unique
ALTER TABLE alumno2
DROP CONSTRAINT uq_alumno2_matricula;

--Eliminar checks
ALTER TABLE alumno2
DROP CONSTRAINT ck_alumno2_telefono;

--Eliminar una columna
ALTER TABLE alumno2
DROP COLUMN matricula;

--DROP

--Eliminar la tabla alumno2
DROP TABLE alumno2;

--Eliminar mas de una tabla a la vez
DROP TABLE alumno, carrera;

--base de datos
USE master;
IF DB_ID ('pruebaatributos') IS NOT NULL
BEGIN
    DROP DATABASE pruebaatributos;
END


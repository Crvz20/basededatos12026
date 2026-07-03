## Diccionario de Datos de la base de datos de Control Escolar 

1. Informacion General 
 Elemento  Valor 
 :---  :---
 Proyecto  Control Escolar 
 Version  1.0 
 Fecha  Junio 2026
 Elaboro  Chris Cruz 
 SGBD  SQLServer 

2. Descripcion del sistema de base de datos 

El sistema administra:
- Carreras
- Alumnos 
- Profesores 
- Materias 
- Grupos
- Inscripciones 

Permite controlar la ooferta academica y las inscripcion de estudiantes 

3. Catalogo de Restricciones utilizadas 
 Codigo  Significado 
 :---  :---
 PK Primary Key 
 FK Foreign Key 
 NN NOT NULL
 UQ UNIQUE 
 AI Auto Increment 
 CK Check 
 DF Default 

4. Diccionario de Datos 

## Tabla: Carrera

**Descripcion**

| Campo | Tipo | Longitud | Restricciones | Descripcion  |
| --------- | --------- | --------- | --------- | --------- |
| id_carrera  | INT  | - | PK,AI,NN | Identificador unico de la carrera  |
| nombre | VARCHAR  | 100 | UQ,NN  | Nombre de la carrera  |
| duracion_cuatrimestre b | VARCHAR  | 100 | UQ,NN  | Nombre de la carrera  |

--

## Tabla: Alumno

**Descripcion**
Almacena la informacion de los estudiantes

| Campo | Tipo | Longitud | Restricciones | Descripcion  |
| --------- | --------- | --------- | --------- | --------- |
| id_alumno  | INT  | - | PK,AI,NN | Identificador unico del alumno  |
| matricula | VARCHAR  | 100 | UQ,NN  | Matricula Institucional |
| nombre | VARCHAR  | 30 | NN  | Nombre del alumno|
| apellido_paterno | VARCHAR  | 100 | NN  | apellido paterno |
| apellido_materno | VARCHAR  | 100 | Null  | apellido materno|
| correo | VARCHAR  | 100 |UQ, NN  | correo institucional|
| fecha_nacimiento | DATE  | - | NN  | fecha de nacimiento|
| id_carrera | int  | - | FK, NN  | carrera a la que pertenece |

--

5.relaciones en la base de datos

| Relación | cardinalidad | decripcion |
|--------------|--------------|--------------|
|carrera -> alumno| 1:N|   Una carrera tiene muchos alumnos |
|carrera -> Materia| 1:N|   Una carrera tiene muchas materias |
|Profesor -> Grupo| 1:N|   Una Profesor tiene muchos grupos |
|materia -> grupo| 1:N|   Una materia tiene muchos grupos |
|Alumno -> Inscripcion | 1:N|   Una carrera tiene muchos alumnos |
|carrera -> alumno| 1:N|   Una carrera tiene muchos alumnos |
|carrera -> alumno| 1:N|   Una carrera tiene muchos alumnos |
|carrera -> alumno| 1:N|   Una carrera tiene muchos alumnos |
| Fila 3, Celda 1 | Fila 3, Celda 2 | Fila 3, Celda 3 |


6. Matriz de clave foranea

| Tabla | Campo FK | Referencia |
|--------------|--------------|--------------|
| Alumno | id_carrera | Fila 2, Celda 3 |
| Matricula| id_carrera | carrera id |
| grupo| Fila 3, Celda 2 | Fila 3, Celda 3 |
| grupo| Fila 3, Celda 2 | Fila 3, Celda 3 |
| inscripcion| Fila 3, Celda 2 | Fila 3, Celda 3 |

7. Integridad Referencial

|  Codigo | Regla |
|--------------|--------------|
| IR-01 |Nose puede crear   |


8.Reglas del negocio

  Codigo | Regla |
|--------------|--------------|
| RN-01 |Un alumo pertenece a una sola carrera |
| RN-02 |una carrera puede tener muchos alumnos |
| RN-03 |una carrera puede tener muchos matriculas |
| RN-04 |un profesor puede impartir varios grupos |
| RN-05 |un grpo solo puede terner un profesor asignado |
| RN-06 |un grpo solo puede terner un profesor asignado |
| RN-06 |la calificacion debe estar entre 0.0 y 10.0 |

9.diagrama relacional




tipos de datos existentes de sql server, misql, mariadb posgres
nomenclatura snake:todo en minustculas


// Prueba
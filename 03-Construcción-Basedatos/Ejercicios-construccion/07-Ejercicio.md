# Base de Datos Empresa
 - Maria Fernanda Hernandez Santillan 

## Diagrama Entidad-Relación

![Ejericio7](image-25.png)

## Script SQL

```sql
CREATE DATABASE Empresa;
GO

USE Empresa;
GO

CREATE TABLE Sucursal(
    Clave INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Ciudad VARCHAR(50),
    Estado VARCHAR(50),
    Telefono VARCHAR(20)
);

CREATE TABLE Puesto(
    Clave INT PRIMARY KEY,
    Nombre VARCHAR(50),
    NivelJerarquico VARCHAR(30),
    SalarioMin DECIMAL(10,2),
    SalarioMax DECIMAL(10,2),
    ClaveSucursal INT,
    FOREIGN KEY(ClaveSucursal)
    REFERENCES Sucursal(Clave)
);

CREATE TABLE Departamento(
    ClaveDepto INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Presupuesto DECIMAL(12,2),
    Ubicacion VARCHAR(100),
    NumEmpJefe INT
);

CREATE TABLE Empleado(
    NumEmp INT PRIMARY KEY,
    CURP VARCHAR(18),
    FechaNac DATE,
    Nombre VARCHAR(50),
    Ap1 VARCHAR(50),
    Ap2 VARCHAR(50),
    ClavePuesto INT,
    ClaveDepto INT,
    NumEmpJefe INT,
    FOREIGN KEY(ClavePuesto)
    REFERENCES Puesto(Clave),
    FOREIGN KEY(ClaveDepto)
    REFERENCES Departamento(ClaveDepto),
    FOREIGN KEY(NumEmpJefe)
    REFERENCES Empleado(NumEmp)
);

ALTER TABLE Departamento
ADD CONSTRAINT FK_Departamento_Jefe
FOREIGN KEY(NumEmpJefe)
REFERENCES Empleado(NumEmp);

CREATE TABLE Capacitacion(
    ClaveCapacitacion INT PRIMARY KEY,
    NombreCapacitacion VARCHAR(100)
);

CREATE TABLE Asistir(
    NumEmp INT,
    ClaveCapacitacion INT,
    FechaIni DATE,
    Calificacion DECIMAL(4,2),
    Status VARCHAR(20),
    PRIMARY KEY(NumEmp,ClaveCapacitacion),
    FOREIGN KEY(NumEmp)
    REFERENCES Empleado(NumEmp),
    FOREIGN KEY(ClaveCapacitacion)
    REFERENCES Capacitacion(ClaveCapacitacion)
);

CREATE TABLE Proyecto(
    Clave INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Presupuesto DECIMAL(12,2),
    FechaIni DATE,
    FechaTermino DATE
);

CREATE TABLE Participa(
    NumEmp INT,
    ClaveProyecto INT,
    Rol VARCHAR(50),
    Horas INT,
    FechaAsignacion DATE,
    PRIMARY KEY(NumEmp,ClaveProyecto),
    FOREIGN KEY(NumEmp)
    REFERENCES Empleado(NumEmp),
    FOREIGN KEY(ClaveProyecto)
    REFERENCES Proyecto(Clave)
);
```

## Consulta

```sql
SELECT *
FROM Empleado E
INNER JOIN Puesto P
ON E.ClavePuesto = P.Clave;

SELECT *
FROM Empleado E
INNER JOIN Departamento D
ON E.ClaveDepto = D.ClaveDepto;

SELECT *
FROM Puesto P
INNER JOIN Sucursal S
ON P.ClaveSucursal = S.Clave;

SELECT *
FROM Empleado E
INNER JOIN Asistir A
ON E.NumEmp = A.NumEmp
INNER JOIN Capacitacion C
ON A.ClaveCapacitacion = C.ClaveCapacitacion;

SELECT *
FROM Empleado E
INNER JOIN Participa PA
ON E.NumEmp = PA.NumEmp
INNER JOIN Proyecto PR
ON PA.ClaveProyecto = PR.Clave;
```
## Tablas sql 
![tabla1](image-26.png)
![tabla2](image-27.png)

## Diagrama sql
![diagrama7](image-28.png)
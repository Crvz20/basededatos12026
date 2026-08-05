/*------------------------------------------------------------------------
    DQL (Data Query Languaje) en SQLSERVER 

Archivo: 01-Create-database.sql

Descripcion:crear la base de datos para la practica de las consultas
----------------------------------------------------------------------------*/


USE master;
go

IF DB_ID('comercial_db') IS NOT NULL
BEGIN 
    ALTER DATABASE comercial_db
    SET SINGLE_USER
    WITH ROLLBACK IMMEDIATE;

    DROP DATABASE comercial_db;
    END;
    GO

    CREATE DATABASE comercial_db;
    GO

    USE comercial_db;
    GO

    SELECT DB_ID ('comercial_db')

    PRINT ('la base de datos comercial_db se creo correctamente');
-- Crear la base de datos

CREATE DATABASE empresa_yoda;
GO

-- Seleccionar la base de datos

USE empresa_yoda;
GO

-- Tabla categoria

CREATE TABLE categoria (

    categoria_id INT IDENTITY(1,1)
        CONSTRAINT pk_categoria
        PRIMARY KEY,

    nombre VARCHAR(20) NOT NULL
        CONSTRAINT uq_categoria_nombre
        UNIQUE,

    activo BIT NOT NULL
        CONSTRAINT df_categoria_activo
        DEFAULT 1
);
GO

-- Tabla producto

CREATE TABLE producto (

    producto_id INT NOT NULL,

    fabricante_id CHAR(3) NOT NULL,

    nombre VARCHAR(25) NOT NULL,

    existencia INT NOT NULL,

    precio DECIMAL(10,2) NOT NULL,

    activo BIT NOT NULL
        CONSTRAINT df_producto_activo
        DEFAULT 1,

    categoria_id INT NOT NULL,

    CONSTRAINT pk_producto
        PRIMARY KEY (producto_id, fabricante_id),

    CONSTRAINT uq_producto_nombre
        UNIQUE (nombre),

    CONSTRAINT ck_producto_existencia
        CHECK (existencia > 0),

    CONSTRAINT ck_producto_precio
        CHECK (precio BETWEEN 1 AND 10000),

    CONSTRAINT fk_producto_categoria
        FOREIGN KEY (categoria_id)
        REFERENCES categoria(categoria_id)
);
GO

-- Insertar categorías

INSERT INTO categoria (nombre)
VALUES
    ('Front End'),
    ('Back End'),
    ('Cloud');
GO

SELECT *
FROM categoria;
GO

-- Insertar productos

INSERT INTO producto
VALUES
    (1, 'FF1', 'Tailwind', 45, 987.34, DEFAULT, 1);

INSERT INTO producto
VALUES
    (2, 'FF1', 'Bootstrap', 24, 567.80, 0, 1);

INSERT INTO producto
VALUES
    (1, 'FF2', 'AWS', 12, 34.50, DEFAULT, 3);
GO

SELECT *
FROM producto;
GO

-- Tabla proveedor

CREATE TABLE proveedor (

    proveedor_id INT NOT NULL
        CONSTRAINT pk_proveedor
        PRIMARY KEY,

    empresa VARCHAR(30) NOT NULL,

    direccion VARCHAR(60),

    limite_credito DECIMAL(10,2) NOT NULL
);
GO

-- Tabla contacto_proveedor

CREATE TABLE contacto_proveedor (

    contacto_id INT NOT NULL,

    nombre VARCHAR(20) NOT NULL,

    apellido_paterno VARCHAR(15) NOT NULL,

    apellido_materno VARCHAR(15),

    telefono VARCHAR(15) NOT NULL,

    proveedor_id INT NOT NULL,

    CONSTRAINT pk_contacto_proveedor
        PRIMARY KEY (contacto_id),

    CONSTRAINT fk_contacto_proveedor_proveedor
        FOREIGN KEY (proveedor_id)
        REFERENCES proveedor(proveedor_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

-- Insertar proveedores

INSERT INTO proveedor
VALUES
    (1, 'Patito de Hule', NULL, 67888.01),
    (2, 'Bimbo', NULL, 5678.01),
    (3, 'Dulces Domingo', NULL, 6785.01),
    (4, 'Drugs Kevin', NULL, 6789.01);
GO

-- Consultar proveedores

SELECT *
FROM proveedor;

-- Consultar contactos

SELECT *
FROM contacto_proveedor;
GO

-- Eliminar proveedor

DELETE FROM proveedor
WHERE proveedor_id = 2;
GO

UPDATE proveedor
SET proveedor_id = 10
WHERE proveedor_id = 2;

DROP TABLE contacto_proveedor;
DROP TABLE producto;

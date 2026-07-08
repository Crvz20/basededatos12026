# Construccion de Base De Datos con SQL-LDD

SQL (Structured Query Lenguaje) Se divide en cinco grandes categorias:

1. DDL (Data Definicion Languaje)
2. DML (Data Manipulation Lenguaje)
3. DQL (Data Control Lenguaje)
4. DEL (Data Control Lenguaje)
5. TEL (Transaction Control Lenguaje)

# SQL- DDL
**Lenguaje de definicion de Datos**
Se utiliza paraa **crear y modificar la estructura de una base de datos**

con DDL trabajamos sombre los objetos de la base de datos:
- Bases de datos
- Tablas
- Visitas
- Indicaciones
- Restricciones
- Esquemas
- Storeg procedures
- Strigers
- funcions 

**Comandos principales**

| Comando | Funcion |
| :--- | :--- |
|CREATE|Crear objetoos|
|ALTER|Modificar objetos|
|DROP|Eliminar objetos|
|TRUCATE|Sirve para vacear una tabla|

## SQL--DML 
**Lenguaje de Manipulacion de Datos**

Sirve para **trabajar con la informacion almacenada**

Aqui no cabia la estructura, sino los registros o los datos.

**Comandos principales**

| Comando | Funcion |
| :--- | :--- |
|INSER|Inserta Registros|
|UPDATE|Actualizar Registros|
|DELETE|Eliminar Registros|

## SQL- DQL
**Lenguaje de Consulta de Datos**

Su funcion es ** consultar informacion**

**Comandos principales**

| Comando | Funcion |
| :--- | :--- |
|SELECT|Consultar Informacion|

Generalmente se combina con:

- WHERE
- ORDEN BY
- GROUP BY
- HAVING
- JOIN (LEFT,RIGHT, INNER, CROSS Y FULL)
- TOP / LIMIT
- Funciones de Agregado (SUM, AVG, MAX, MIN, COUNT)
- Funciones de ventana (Windows Funcion)

## Nomenclatura snake_case

snake_case ** Es la convención más recomendada de ahora si se busca una nomenclatura
moderna, portable y alineada con buenas practicas en distintos motores de base de datos.

La razón es que funciona de forma consistente en **SQL-Server, MySQL** y especial mente 
en **PostgresSQL**. Con snake_case se evitan problemas de mayusculas y se hacen las consultas
sean mas legibles.


**Estandar de Construcción**
| Objeto | Convención | Ejemplo |
| :--- | :--- | :--- |
| Base de Datos | snake_case | control_escolar|
| Esquema | snake_case | ventas, rh, seguridad|
| Tabla | Singular en snake_case | cliente, pedido, detalle_pedido|
| Columna | snake_case | cliente_id, fecha_ registro, nombre, correo_electronico|
| Pk | <tabla>_id | cliente_id, categoria_id|
| Fk | igual que la PK referenciada  | cliente_id, producto_id|
| Talba puente | <tabla1>_<tabla2> | alumno_curso, provedor_producto|

**Nombrar las restricciones**

- pk_cliente
- fk_pedido_cliente -> pk_tablaorigen_tabla referenciada
- uq_ cliente_correo_producto
- ck_producto_precio
- df_cliente_activo












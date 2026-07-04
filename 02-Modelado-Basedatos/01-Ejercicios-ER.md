## EJERCICIOS MODELO E-R

1. En un hospital se registra informacion de sus pacientes 

## De cada paciente se desea almacenar:
  -Algo que lo identifique 
  -Nombre 
  -Fecha de Nacimiento 

## De un expediente medico se almacena:
  -Numero de Expediente 
  -Fecha de Apertura
  -Tipo de sangre 

## Reglas de Negocio 


## Resultado de Modelo E-R 
![Hospital](../img/E-R/E1-ER.png)



2. Una universidad administra profeosres y cursos.
 
> De cada profesor se almacena:
   - Clave profesor 
   - Nombre 
   - Especialidad 

> De cada curso se almacena:
  - Identificacion del curso 
  - Nombre del curso 
  - Creditos 

> Reglas del Negocio 
  1. Un profesor puede impartir varios cursos 
  2. Un curso solamente puede ser impartido por un profesor 
  3. Puede existir un profesor que actualmente no imparta cursos 
  4. Todo curso debe ser asignado a un profesor 

  Se debe realizar lo siguente :
   - Entidades 
   - Identificar la relacion 
   **IMPARTE**
   - Determinar la cardinalidad 
   - Determinar la participacion 

## Resultado de Modelo E-R 
![Profesor](../img/E-R/E2-ER.png)


3. Una escuela administra alumnos y materias 
> De cada alumno se almacena:
  - Matricula 
  - Nombre 
  - Semestre 

> De cada materia se almacena:
  - Nombre de la materia 
  - Creditos 
  - Clave de la materia 

 reglas 
  1. Un alumno puede inscribirse en varias materias 
  2. Una materia puede tener muchos alumnos inscritos 
  3. Puede existir una materia sin alumnos inscritos 
  4. Todo alumno debe estar inscrito en al menos una materia
  5. De cada inscrpcion se debe almacenar:
     - Fecha de inscrpcion 
     - Calificacion final 

[Escuela](../img/E-R/E3-ER.png)


4. Una empresa encargada de realizar venta de productos:
> De cada cliente se almacena:
   - Numero de cliente que lo identifique
   - Y su nombre de cliente el cual es una persona moral
   - RFC 
> La empresa realiza pedidos los cuales almacena lo siguiente:
   - Numero de pedido
   - Fecha 
> La empresa tambien almacena productos de los cuales registra lo siguiente:
   - Numero del producto 
   - Nombre 
   - Precio
> Al realizar los pedidos deben registrar la cantidad de productos pedidos y precio 
>Reglas 
1. Un cliente puede realizar muchos pedidos 
2. Cada pedido pertenece a un solo cliente
3. Un pedido puede contener varios productos 
4. Un producto puede aparecer en muchos pedidos 
5. Un pedido debe contener al menos un producto
6. Un producto puede no haber  sido vendido
7. El detalle de pedido no existe sin pedido 
8. El detalle de pedido no existe sin producto
9. El detalle almacen cantidadd y precio de venta

[Empresa](../img/E-R/ER4-ER.png)


5. 
Departamentos: La empresa está organizada en departamentos. Cada departamento tiene un nombre único, un número único y un empleado en particular que administra el departamento. Llevamos un registro de la fecha de inicio en la que ese empleado comenzó a administrar el departamento. Un departamento puede tener varias ubicaciones.

Proyectos: Un departamento controla una serie de proyectos, cada uno de los cuales tiene un nombre único, un número único y una única ubicación.

Empleados: Almacenamos el nombre de cada empleado, su número de Seguro Social, dirección, salario, sexo (género) y fecha de nacimiento. Un empleado es asignado a un departamento, pero puede trabajar en varios proyectos, los cuales no están necesariamente controlados por el mismo departamento. Llevamos un registro del número actual de horas a la semana que un empleado trabaja en cada proyecto. También llevamos un registro del supervisor directo de cada empleado (quien es otro empleado).

Dependientes: Queremos llevar un registro de los dependientes de cada empleado para fines de seguro. Conservamos el primer nombre, sexo, fecha de nacimiento y la relación con el empleado de cada dependiente

[Empresa2](../img/E-R/E5-ER.png)

# EJERCICIO MODELO E-R

1. EJERCICIO 1

En un hospital se registra informacion de sus pacientes

# De cada paciente se desea alamacenar :
- Algo que lo identifique
-nombre
-fecha de nacimiento

# de un expediente medico se almacena:
-el numero de expediente
-la fecha de apertura 
-tipo de sangre

# Reglas del negocio:
-cada paciente debe de tener un expediente medico
-cada paciente pertenece unicamente a un expediente medico
-no puede existir ningun expediente medico sin paciente
-no puede exisitr un paciente sin un expediente


2. EJERCICIO 2

una universidad administra profesores y cursos,
>De cada profesor se almacena:
    - Clava del profesor (ID)
    - Nombre 
    - Especialidad

>De cada curso se almacena:
    - Identificacion del curso
    - nombre del curso
    - creditos

>Relgas del negocio
    - unprofesor puede impartir varios cursos
    - Un curso solamente puede ser impartido por un profesor
    - puede existir un profesor que actual mente no imparta cursos
    - todo curso debe ser asignado a un profesor
    
    Se debe realizar lo siguiente:

    - entidades
    - identificar la relacion 
**IMPARTE**
    - Determinar la Cardinalidad
    - Determinar la participacion
    

    3. EJERCICIO 3

 Una escuela administra almunos y materias
> de cada alumno se almacena:
    - Matricula
    - Nombre
    - Semestre
> De cada materia se almacena:
    -clave
    -Nombre
    -Creditos

>reglas del negocio
    - Un alumno puede inscribirse en varias materias
    - Una materia puede tener muchos alumnos inscritos
    - Puede exisitir una materia sin alumnos iscritos
    - Todo alumno debe de estar incrito en almenos una Materia
    - De cada inscripcion se debe almacenar, fecha de inscripcion y calificacion final
    - la relacion se llamara 
**INSCRIBE**

 4. EJERCICIO 4 
 Una espera encargada de realizar venta de productos
 >de cada cliente se almacena:
    -numero de cliente 
    -nombre de cliente el cual es una persona moral
    -RFC

>la empresa realiza pedidos en los cuales almacena lo siguiente:
    -Numero de pedido
    -Fecha

>La empres tambien almacena productos de los cuales registra los siguientes:
    -numero de producto
    -nombre
    -precio
    
>al realizar los pedidos deben registrar la cantidad de producto pedido y su precio

>reglas del negocio:
1. Un cliente puede realizar muchos pedidos
2. cada pedido pertenece a un solo cliente
3. Un pedido puede contener varios productos
4. un producto puede aparecer en muchos pedidos
5. un pedido debe de contener almenos un producto
6. un producto pude no haber sido vendido
7. el detalle el pedido no existe sin  pedido
8. el detalle del pedido no existe sin producto
9. el detalle almacena cantidad y precio de venta
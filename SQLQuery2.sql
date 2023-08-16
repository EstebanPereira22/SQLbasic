 /*Una empresa almacena los datos de sus empleados en una tabla llamada "empleados".

1- Elimine la tabla, si existe:
 if object_id('empleados') is not null
  drop table empleados;

2- Cree la tabla:
 create table empleados(
  nombre varchar(20),
  documento varchar(8), 
  sexo varchar(1),
  domicilio varchar(30),
  sueldobasico float
 );

3- Vea la estructura de la tabla:
 exec sp_columns empleados;

4- Ingrese algunos registros:
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Juan Juarez','22333444','m','Sarmiento 123',500);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Ana Acosta','27888999','f','Colon 134',700);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Carlos Caseres','31222333','m','Urquiza 479',850);

5- Muestre todos los datos de los empleados

6- Muestre el nombre, documento y domicilio de los empleados

7- Realice un "select" mostrando el documento, sexo y sueldo básico de todos los empleados
*/

if object_id('empleados') is not null
drop table empleados;

create table empleados(
nombre varchar(50),
documento varchar (8),
sexo varchar(1),
domicilio varchar(30),
sueldo float
);

exec sp_columns empleados;


insert into empleados (nombre, documento, sexo, domicilio, sueldo)
  values ('Juan Juarez','22333444','m','Sarmiento 123',500);
 insert into empleados (nombre, documento, sexo, domicilio, sueldo)
  values ('Ana Acosta','27888999','f','Colon 134',700);
 insert into empleados (nombre, documento, sexo, domicilio, sueldo)
  values ('Carlos Caseres','31222333','m','Urquiza 479',850);



  select * from empleados;

  select nombre,sexo from empleados;
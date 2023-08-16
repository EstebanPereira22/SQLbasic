/*Trabaje con la tabla "agenda" en la que registra los datos de sus amigos.

1- Elimine "agenda", si existe:
 if object_id('agenda') is not null
  drop table agenda;

2- Cree la tabla, con los siguientes campos: apellido (cadena de 30), nombre (cadena de 20), 
domicilio (cadena de 30) y telefono (cadena de 11).

3- Visualice la estructura de la tabla "agenda".

4- Ingrese los siguientes registros:
 Acosta, Ana, Colon 123, 4234567;
 Bustamante, Betina, Avellaneda 135, 4458787;
 Lopez, Hector, Salta 545, 4887788; 
 Lopez, Luis, Urquiza 333, 4545454;
 Lopez, Marisa, Urquiza 333, 4545454.

5- Seleccione todos los registros de la tabla

6- Seleccione el registro cuyo nombre sea "Marisa" (1 registro)

7- Seleccione los nombres y domicilios de quienes tengan apellido igual a "Lopez" (3 registros)

8- Muestre el nombre de quienes tengan el teléfono "4545454" (2 registros)*/
if object_id('agenda') is not null
drop table agenda;

create table agenda(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(30),
);

exec sp_columns agenda;

insert into agenda(apellido,nombre,domicilio,telefono)
values('Acosta', 'Ana', 'Colon 123', 4234567);

insert into agenda(apellido,nombre,domicilio,telefono)
values('Bustamante', 'Betina', 'Avellaneda 135', 4458787);

insert into agenda(apellido,nombre,domicilio,telefono)
values('Bustamante', 'Betina', 'Avellaneda 135', 4458787);

select * from agenda;

select * from agenda 
where nombre = 'Ana';


select nombre from agenda
where telefono = 4458787;
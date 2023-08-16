/*Un consultorio médico en el cual trabajan 3 médicos registra las consultas de los pacientes en una 
tabla llamada "consultas".
1- Elimine la tabla si existe:
 if object_id('consultas') is not null
  drop table consultas;

2- La tabla contiene los siguientes datos:
  - fechayhora: datetime not null, fecha y hora de la consulta,
  - medico: varchar(30), not null, nombre del médico (Perez,Lopez,Duarte),
  - documento: char(8) not null, documento del paciente,
  - paciente: varchar(30), nombre del paciente,
  - obrasocial: varchar(30), nombre de la obra social (IPAM,PAMI, etc.).
 );

3- Un médico sólo puede atender a un paciente en una fecha y hora determianada. En una fecha y hora 
determinada, varios médicos atienden a distintos pacientes. Cree la tabla definiendo una clave 
primaria compuesta:
 create table consultas(
  fechayhora datetime not null,
  medico varchar(30) not null,
  documento char(8) not null,
  paciente varchar(30),
  obrasocial varchar(30),
  primary key(fechayhora,medico)
 );

4- Ingrese varias consultas para un mismo médico en distintas horas el mismo día.

5- Ingrese varias consultas para diferentes médicos en la misma fecha y hora.

6- Intente ingresar una consulta para un mismo médico en la misma hora el mismo día.
*/


 if object_id('consultas') is not null
  drop table consultas;



 create table consultas(
  fechayhora datetime not null,
  medico varchar(30) not null,
  documento char(8) not null,
  paciente varchar(30),
  obrasocial varchar(30),
  primary key(fechayhora,medico)
 );

/*4- Ingrese varias consultas para un mismo médico en distintas horas el mismo día.

5- Ingrese varias consultas para diferentes médicos en la misma fecha y hora.

6- Intente ingresar una consulta para un mismo médico en la misma hora el mismo día.*/
insert into consultas
  values ('2006/11/05 8:00','Lopez','12222222','Acosta Betina','PAMI');
 insert into consultas
  values ('2006/11/05 8:30','Carlos','23333333','Fuentes Carlos','PAMI');

 insert into consultas
  values ('2006/11/05 8:05','Perez','34444444','Garcia Marisa','IPAM');
 insert into consultas
  values ('2006/11/05 8:05','Perez','45555555','Pereyra Luis','PAMI');

 insert into consultas
  values ('2006/11/05 8:00','Perez','23333333','Fuentes Carlos','PAMI');
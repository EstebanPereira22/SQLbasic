/* ponemos en uso la db master*/
Use master 
go

/* consultamos si ya existe una base de datos con ese nombre*/
/* si existe la eliminamos*/

if exists(Select * From Sysdatabases Where name = 'EjercicioDER')
begin
	drop database EjercicioDER
end 
go

/* creamos la base de datos en una ubicacion (debe exisitir esa carpeta)*/
Create database EjercicioDER
/*
on
(
Name = 'EjercicioDER',
FileName = 'C:\FB\EjercicioDER.mdf'
)
*/
go

Use EjercicioDER
go

/*creamos las tablas con algunas restricciones como ejemplo
ademas de las rne ya establecidas)*/
Create Table Cliente
(
	cedula int primary key check (cedula between 1000000 and 99999999),
	nombre varchar (20) not null,
	apellido varchar (20) not null
)
go

Create Table Telefono
(
	cedula int foreign key references Cliente(cedula),
	telefono varchar(9),
	primary key (cedula, telefono)
)

go

Create Table Tarjeta
(
	numero int identity(1000,1) primary key,
	vencimiento datetime not null check (vencimiento >= GETDATE()),
	cedula int not null foreign key references Cliente (cedula)
)

go
Create Table Debito
(
	numero int foreign key references Tarjeta(numero) primary key,
	saldo float not null check (saldo >=0)
)

go
Create Table Credito
(
	numero int foreign key references Tarjeta(numero),
	limite float not null check (limite >= 0),
	categoria varchar(7) not null check (categoria in ('clasica', 'plata', 'platino', 'oro')),
	primary key (numero)

)
go
Create Table Compra
(
	identificador int identity primary key,
	fecha datetime not null default GETDATE(),
	monto float not null check (monto >=0),
	numero int not null foreign key references Tarjeta(numero)
)
go 

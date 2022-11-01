CREATE DATABASE Biblioteca;
-- drop database biblioteca;

create table Genero (
	idGenero int auto_increment primary key,
    nombregenero varchar(40) not null unique 
);


CREATE TABLE cliente (
    idcliente int auto_increment primary key,
    nombrecliente varchar(40) not null, 
    apellidocliente varchar(40) not null,
    telefono char(10), 
    direccion varchar(500)
);

create table usuario(
    nombreUsuario varchar(20) not null unique,
    clave varchar(5) not null,
    -- llave foranea 
    idcliente int not null,
    primary key(nombreUsuario, clave),
    foreign key(idcliente) references cliente(idcliente)
);

create table libro (
    idlibro int auto_increment primary key,
    nombrelibro varchar(40) not null,
    precio decimal(6,2) not null,
    nopaginas int not null,
    editorial varchar (40) not null,
    autor varchar(40) not null,
    idGenero int not null, 
    foreign key(idGenero) references Genero(idGenero)

);

create table ClienteLibro(
    idcliente int not null,
    idlibro int not null,
    fecha date not null,
    hora time not null,
    foreign key(idcliente) references cliente(idcliente),
    foreign key(idlibro) references libro(idlibro)

);
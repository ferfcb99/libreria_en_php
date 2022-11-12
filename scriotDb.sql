CREATE DATABASE Biblioteca;
use Biblioteca;
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
    ruta varchar(1000),
    precio decimal(6,2) not null,
    nopaginas int not null,
    editorial varchar (40) not null,
    autor varchar(40) not null,
    descripcion varchar(500),
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




insert into Genero (nombregenero) values('Terror'), 
('Accion'), ('Romance'), ('Comedia'), ('Narrativo'), ('Teatral'),
('Ciencia');

insert into libro (
    nombrelibro,ruta,precio,nopaginas,editorial,autor, descripcion ,idGenero
) values('Eso', '../img/libro1.jpg', 3526.78, 100, 'edi1', 'pepe', 'descripciondescripciondescripciondescripcion' ,5),
('bajo la misma estrella', '../img/libro2.jpg', 2469.00, 350, 'edit2', 'rodri', 'descripciondescripciondescripciondescripcion' ,3),
('Don Quijote de la Mancha', '../img/libro3.jpg', 4325.00, 200, 'edi3', 'luis', 'descripciondescripciondescripciondescripcion' ,7),
('cien años contigo', '../img/libro4.jpg', 3526.78, 100, 'edi1', 'pepe', 'descripciondescripciondescripciondescripcion' ,5),
('libro1', '../img/libro5.jpg', 3526.78, 100, 'edi1', 'pepe', 'descripciondescripciondescripciondescripcion' ,5),
('libro2', '../img/libro6.jpg', 3526.78, 100, 'edi1', 'pepe', 'descripciondescripciondescripciondescripcion' ,1),
('libro3', '../img/libro7.jpg', 3526.78, 100, 'edi1', 'pepe', 'descripciondescripciondescripciondescripcion' ,4),
('libro4', '../img/libro8.jpg', 3526.78, 100, 'edi1', 'pepe', 'descripciondescripciondescripciondescripcion' ,1),
('libro5', '../img/libro9.jpg', 3526.78, 100, 'edi1', 'pepe', 'descripciondescripciondescripciondescripcion' ,5),
('libro6', '../img/libro10.jpg', 3526.78, 100, 'edi1', 'pepe', 'descripciondescripciond' ,2);


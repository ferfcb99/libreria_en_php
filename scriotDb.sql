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

insert into libro (nombrelibro,ruta,precio,nopaginas,editorial,autor, descripcion ,idGenero) 
values('La teoria del todo', '../img/libro1.jpg', 526.78, 150, 'Acantilado', 'Stephen Hawking', 'descripciondescripciondescripciondescripcion' ,5),
        ('¿Amor u odio?', '../img/libro2.jpg', 469.00, 350, 'Acantilado', 'Hanif Kureshi', 'descripciondescripciondescripciondescripcion' ,3),
        ('Orgullo y prejuicio', '../img/libro3.jpg', 432.00, 200, 'Agular', 'Jane Austen', 'descripciondescripciondescripciondescripcion' ,7),
        ('It', '../img/libro4.jpg', 356.78, 100, 'Acanrilado', 'Stephen king', 'descripciondescripciondescripciondescripcion' ,5),
        ('El terror viene de noche', '../img/libro5.jpg', 3526.78, 100, 'Akal', 'Pol Rupes', 'descripciondescripciondescripciondescripcion' ,5),
        ('Muerte subita', '../img/libro6.jpg', 356.78, 100, 'Alba', 'Alvaro Enrigue', 'descripciondescripciondescripciondescripcion' ,1),
        ('A hombros de gigantes', '../img/libro7.jpg', 102.98, 110, 'Alba', 'Stephen Hawking', 'descripciondescripciondescripciondescripcion' ,4),
        ('Grandes enigmas de la ciencia', '../img/libro8.jpg', 146.08, 130, 'Akal', 'Lamila Antonio', 'descripciondescripciondescripciondescripcion' ,1),
        ('A las puertas de la nada', '../img/libro9.jpg', 352.78, 200, 'Agula', 'Corinne Duyvis', 'descripciondescripciondescripciondescripcion' ,5),
        ('La mano izquierda de la oscuridad', '../img/libro10.jpg', 526.98, 100, 'Aculpa', 'Ursula Guine', 'descripciondescripciond' ,2),
        ('Un mundo invertido', '../img/libro10.jpg', 526.98, 330, 'Aculpa', 'Cristopher Priest', 'descripciondescripciond' ,2),
        ('Bajo la misma estrella', '../img/libro10.jpg', 222.98, 100, 'Anagrama', 'John Green', 'descripciondescripciond' ,2),
        ('Ladrona de libros', '../img/libro10.jpg', 156.98, 100, 'Anagrama.', 'Markus Zusak', 'descripciondescripciond' ,2),
        ('El palacio de Lilith', '../img/libro10.jpg', 526.98, 100, 'Aculpa', 'Rodolfo Prez ', 'descripciondescripciond' ,2),
        ('Nosotros en la luna', '../img/libro10.jpg', 600.98, 100, 'Anagrama.', 'Alice Kellen', 'descripciondescripciond' ,2),
        ('Los mundos de Caroline', '../img/libro10.jpg', 156.98, 100, 'Aculpa', 'Graing Russell', 'descripciondescripciond' ,2),
        ('Los 100', '../img/libro10.jpg', 566.98, 100, 'Anagrama.', 'Kas Morgan', 'descripciondescripciond' ,2),
        ('Hush Hush', '../img/libro10.jpg', 766.98, 100, 'Alba.', 'Becca Kitzpatrik', 'descripciondescripciond' ,2),
        ('Perfume', '../img/libro10.jpg', 506.98, 100, 'Anagrama.', 'Rosalia Miroslava', 'descripciondescripciond' ,2),
        ('Solo amigos', '../img/libro10.jpg', 266.98, 100, 'Anagrama.', 'Maya mARTIN', 'descripciondescripciond' ,2),
        ('Perfect', '../img/libro10.jpg', 766.98, 100, 'Alba.', 'Alison G Bailey', 'descripciondescripciond' ,2),
        ('Cincuenta sombras de Grey', '../img/libro10.jpg', 966.98, 100, 'Alba.', 'E L James', 'descripciondescripciond' ,2),
        ('Algun dia de besare', '../img/libro10.jpg', 566.98, 100, 'Alba.', 'Ana Alvarez', 'descripciondescripciond' ,2),
        ('La caba,a', '../img/libro10.jpg', 206.98, 100, 'Alba.', 'Natasha Preston', 'descripciondescripciond' ,2),
        ('El anonimo', '../img/libro10.jpg', 156.98, 100, 'Aculpa.', 'Natasha Preston', 'descripciondescripciond' ,2),
        ('Ojo de fuego', '../img/libro10.jpg', 866.98, 100, 'Alba.', 'Stephen King', 'descripciondescripciond' ,2),
        ('Doctor sue,o', '../img/libro10.jpg', 736.98, 100, 'Aculpa', 'Stephen King', 'descripciondescripciond' ,2),
        ('El gran dise,o', '../img/libro10.jpg', 696.98, 100, 'Anagrama.', 'Stephen Hawking', 'descripciondescripciond' ,2),
        ('Breve historia del tiempo', '../img/libro10.jpg', 206.98, 100, 'Alba.', 'Stephen Hawking', 'descripciondescripciond' ,2),
        ('La gran ilusion', '../img/libro10.jpg', 966.98, 100, 'Alba.', 'Stephen Hawking', 'descripciondescripciond' ,2);


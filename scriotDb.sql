DROP DATABASE Biblioteca;
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
    estaDentroDelSistema int not null,
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
values('La teoria del todo', '../img/libro 1.jpg', 526.78, 150, 'Acantilado', 'Stephen Hawking', 'Es una teoría hipotética de la física teórica que explica y conecta en una sola todos los fenómenos físicos conocidos. Inicialmente, el término se usó con una connotación irónica, para referirse a varias teorías sobre generalizadas.' ,5),
        ('¿Amor u odio?', '../img/libro 2.jpg', 469.00, 350, 'Acantilado', 'Hanif Kureshi', 'El amor y el odio por la misma persona tienden a juntarse en la mente del sujeto, y a esto lo llamamos ambivalencia. Lo normal es que el amor domine sobre el odio, y así se integra el odio, forma parte de la relación, pero no la invade.' ,3),
        ('Orgullo y prejuicio', '../img/libro 3.jpg', 432.00, 200, 'Agular', 'Jane Austen', 'Orgullo y prejuicio es una novela publicada en 1813 por la escritora inglesa Jane Austen. En esta se retratan temas de la sociedad inglesa victoriana como el estatus, los prejuicios y la importancia del matrimonio para definir la vida de las mujeres.' ,7),
        ('It', '../img/libro 4.jpg', 356.78, 100, 'Acanrilado', 'Stephen king', 'Es una novela de terror publicada en 1986 por el escritor estadounidense Stephen King. Cuenta la historia, en un juego de correspondencias con el pasado y el presente, de un grupo de siete amigos que son perseguidos por una entidad sobrenatural, al que llaman «Eso», que es capaz de cambiar de forma y se alimenta principalmente del terror que produce en sus víctimas.' ,5),
        ('El terror viene de noche', '../img/libro 5.jpg', 3526.78, 100, 'Akal', 'Pol Rupes', '¿Son los monstruos de nuestra imaginación, quizás, proyecciones de lo que es el ser humano capaz de hacer? O, quizás, ¿existen seres que tejen, en nuestros sueños, imágenes perturbadoras de una realidad que nuestra mente, inconscientemente, es incapaz de asimilar?' ,5),
        ('Muerte subita', '../img/libro 6.jpg', 356.78, 100, 'Alba', 'Alvaro Enrigue', 'El 4 de octubre de 1599, a las doce en punto del mediodía, se encuentran en las canchas de tenis públicas de la Plaza Navona, en Roma, dos duelistas singulares. Uno es un joven artista lombardo que ha descubierto que la forma de cambiar el arte de su tiempo no es reformando el contenido de sus cuadros, sino el método para pintarlos: ha puesto la piedra de fundación del arte moderno.' ,1),
        ('A hombros de gigantes', '../img/libro 7.jpg', 102.98, 110, 'Alba', 'Stephen Hawking', 'En A hombros de gigantes, el gran físico teórico Stephen Hawking nos explica cómo los grandes hombres de ciencia como Copérnico, Galileo, Kepler, Newton y Einstein construyeron sus teorías a partir de las geniales contribuciones de sus predecesores y cómo nos han legado, en conjunto, un tesoro de conocimientos científicos que nadie puede ignorar.' ,4),
        ('Grandes enigmas de la ciencia', '../img/libro 8.jpg', 146.08, 130, 'Akal', 'Lamila Antonio', 'Todo lo que siempre has querido saber sobre el mundo que nos rodea explicado con un toque de humor por los expertos de la web Naukas.. ¿Conoces el mecanismo de funcionamiento de un microondas? ¿Sabes quién fue el primer hombre en morir en una misión espacial? ¿Por qué las bolas de golf tienen agujeros?' ,1),
        ('A las puertas de la nada', '../img/libro 9.jpg', 352.78, 200, 'Agula', 'Corinne Duyvis', 'A las puertas de la nada es una novela de suspense apocalíptico que, de la mano de una heroína implacable y absolutamente única, mantiene en vilo y se atreve a formular las preguntas más difíciles: cuando el mundo está a punto de acabarse.' ,5),
        ('La mano izquierda de la oscuridad', '../img/libro 10.jpg', 526.98, 100, 'Aculpa', 'Ursula Guine', 'La mano izquierda de la oscuridad es un hito significativo en la creciente sofisticación del tratamiento del sexo en la ciencia ficción que se desarrolló en los años 1970. Genry Ai es un enviado del Ekumen en el planeta Gueden, llamado invierno por encontrarse en una edad glaciar.' ,2),
        ('Un mundo invertido', '../img/libro 11.jpg', 526.98, 330, 'Aculpa', 'Cristopher Priest', 'Abandona la ciudad, no tiene motivos para pensar que el mundo que se extiende más allá no sea sino el de su propio planeta de origen.' ,2),
        ('Bajo la misma estrella', '../img/libro 12.jpg', 222.98, 100, 'Anagrama', 'John Green', 'Hazel Grace, una chica que sufre cáncer de pulmón. La vida de Hazel se vuelca el día en que conoce a Agustus Waters, un joven que fue diagnosticado años atrás de osteosarcoma y que le causó la pérdida de su pierna izquierda. Una vez la pareja se conocen, entablarán una amistad que poco a poco se irá.' ,2),
        ('Ladrona de libro s', '../img/libro 13.jpg', 156.98, 100, 'Anagrama.', 'Markus Zusak', 'Liesel Meminger, una niña de nueve años que se va a vivir con una familia adoptiva, compuesta por dos miembros, Hans y Rosa Hubermann, en un pueblo cercano a Múnich (Molching), en la Alemania anterior a la Segunda Guerra Mundial. El partido de Hitler está en auge y sus seguidores son más numerosos cada día. A lo largo de toda la historia, se muestra el interés de Liesel por la literatura.' ,2),
        ('El palacio de Lilith', '../img/libro 14.jpg', 526.98, 100, 'Aculpa', 'Rodolfo Prez ', 'EL PALACIO DE LILITH
Lilith habría sido la primera mujer de la humanidad, pero fue expulsada del cielo y condenada para siempre por oponerse al sistema patriarcal del reino de los cielos. Ahora está de vuelta, con sus sirvientes y su sed de venganza para destruir el orden creado por Dios y el Diablo.
' ,2),
        ('Nosotros en la luna', '../img/libro 15.jpg', 600.98, 100, 'Anagrama.', 'Alice Kellen', 'Un chico (Rhys) y una chica (Ginger) se conocen una noche en París. La conexión es instantánea, pero la realidad les devuelve a sus respectivas vidas. A ella en un Londres donde le acaba de dejar su novio de toda la vida. A él a un viaje alrededor del mundo con el que intenta encontrar su lugar. Su amistad crece llena de mails y de confidencias. Pero ¿qué ocurre cuando pasa el tiempo?' ,2),
        ('Los mundos de Caroline', '../img/libro 16.jpg', 156.98, 100, 'Aculpa', 'Graing Russell', 'Coraline Jones es una niña de 11 años llena de vida, de curiosidad y mucho más aventurera de lo que haría suponer su edad. Acaba de trasladarse con sus padres de Michigan a Oregón. Echa de menos a sus amigos, y al ver que sus padres están desbordados por el trabajo, decide encontrar alguna distracción en el vecindario.' ,2),
        ('Los 100', '../img/libro 17.jpg', 566.98, 100, 'Anagrama.', 'Kas Morgan', 'Comienzan con Clarke Griffin, una antigua estudiante de medicina, estando prisionera por ser cómplice de traición, que cometieron sus padres al investigar sobre la radiación experimentando con humanos el vicecanciller los tenía amenazados con matar a Clarke si no hacían la investigación.' ,2),
        ('Hush Hush', '../img/libro 18.jpg', 766.98, 100, 'Alba.', 'Becca Kitzpatrik', 'Enamorarse no formaba parte de los planes de Nora Grey. Nunca se había sentido especialmente atraída por sus compañeros de instituto, a pesar de los esfuerzos de su mejor amiga, Ve, para encontrarle una pareja. Así era hasta la llegada de Patch. Con su sonrisa fácil y sus ojos que parecen ver en su interior, Nora se siente encandilada por él a pesar de sí misma.' ,2),
        ('Perfume', '../img/libro 19.jpg', 506.98, 100, 'Anagrama.', 'Rosalia Miroslava', 'El protagonista de esta novela tiene dos habilidades especiales: su olfato, y que su cuerpo no despide ningún olor. Combinadas le convierten en el mejor perfumista y en el mejor asesino. Sus perfumes, capaces de inspirar cualquier sentimiento imaginable, están hechos a partir de los fluidos corporales de jóvenes vírgenes.' ,2),
        ('Solo amigos', '../img/libro 20.jpg', 266.98, 100, 'Anagrama.', 'Maya mARTIN', 'Se dan besos, pero muy alejado de los labios. Relación más parecida a ser hermanos que novios. Según dicen en la mayoría de las relaciones de amistad siempre uno de ellos está enamorado del otro
¿Mi problema?, que yo soy esa parte, el loco enamorado de su mejor amiga.
' ,2),
        ('Perfect', '../img/libro 21.jpg', 766.98, 100, 'Alba.', 'Alison G Bailey', 'He estado insegura de muchas cosas en mi vida, excepto de una, y es que siempre lo he querido. Cada minuto de cada uno de los días que he estado en este mundo, mi corazón le ha pertenecido.' ,2),
        ('Cincuenta sombras de Grey', '../img/libro 22.jpg', 966.98, 100, 'Alba.', 'E L James', 'La inexperta e inocente Ana intenta olvidarle, pero pronto comprende cuánto le desea. Grey está atormentado por sus propios demonios y le consume la necesidad de controlarlo todo.' ,2),
        ('Algun dia de besare', '../img/libro 23.jpg', 566.98, 100, 'Alba.', 'Ana Alvarez', 'Manuel es un militar de los cuerpos especiales del ejército. Cuando conoce a Stefany en una boda familiar el primer encuentro entre ambos no es muy afortunado.' ,2),
        ('La cabaña', '../img/libro 24.jpg', 206.98, 100, 'Alba.', 'Natasha Preston', 'Si algo importa, todo importa. Dado que tú eres importante, todo lo que haces lo es. Cada vez que perdonas, el universo cambia; cada vez que te esfuerzas y tocas un corazón o una vida, el mundo cambia; con cada gesto de bondad y con cada favor concedido, mis propósitos se cumplen y nada vuelve a ser igual.' ,2),
        ('El anonimo', '../img/libro 25.jpg', 156.98, 100, 'Aculpa.', 'Natasha Preston', 'Cuando Lylah y sus amigos recibieron el anónimo, lo tomaron a broma. ¿Un admirador secreto? Parecía una tontería por la que no valía la pena preocuparse. Ese fue el primer error. Porque pronto uno de ellos desaparece… y recibe un nuevo mensaje: SERÁS MÍA.' ,2),
        ('Ojo de fuego', '../img/libro 26.jpg', 866.98, 100, 'Alba.', 'Stephen King', 'Un hombre y una mujer son sometidos a experimentos gubernamentales altamente secretos, destinados a producir extraordinarios poderes psíquicos. La pareja se casa y tiene una hija. A los pocos meses de vida, la niña empieza a mostrar signos de una salvaje y horrorosa fuerza que crece en su interior. Desesperadamente, sus padres tratan de educarla para que controle esa fuerza y "actúe con normalidad".' ,2),
        ('Doctor sueño', '../img/libro 27.jpg', 736.98, 100, 'Aculpa', 'Stephen King', 'Aquel niño que recorría en triciclo las siniestras habitaciones del Hotel Overlook, es ahora un adulto con muchos problemas. Ha aprendido a controlar en parte sus visiones y trabaja en un asilo de ancianos donde los ayuda a morir en paz cuando llega el momento.' ,2),
        ('El gran diseño', '../img/libro 28.jpg', 696.98, 100, 'Anagrama.', 'Stephen Hawking', 'Si esta teoría es verificada por la observación científica, habremos culminado una búsqueda que se remonta a hace más de tres mil años: habremos hallado el Gran Diseño.' ,2),
        ('Breve historia del tiempo', '../img/libro 29.jpg', 206.98, 100, 'Alba.', 'Stephen Hawking', 'Comienza con la ley de la gravedad de Newton en el siglo XVII hasta las teorías modernas sobre el comienzo del universo. Este libro es una guía clara y comprensible del universo. Desde los agujeros negros hasta los viajes en el tiempo, Stephen Hawking explica algunos de los misterios más esenciales de nuestro universo.' ,2),
        ('La gran ilusion', '../img/libro 30.jpg', 966.98, 100, 'Alba.', 'Stephen Hawking', 'El profesor Hawking ha tomado en sus manos la comprometida tarea de seleccionar y presentar, con su propia opinión científica e intelectual, aquellos textos específicos que llevaron a Einstein a ocupar un lugar de honor en la historia de la humanidad.' ,2);

insert into cliente(nombrecliente, apellidocliente, telefono, direccion) values("Prueba", "prueba", "3456789", "fvsdv");

insert into usuario(nombreUsuario, clave, estaDentroDelSistema, idcliente) values("test", "45678", 1, 1);
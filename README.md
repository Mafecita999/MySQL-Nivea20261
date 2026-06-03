# MySQL-Nivea20261
-- ----------------------------------------
-- ENTREGA SEMANA 1 - CATÁLOGO STREAMFLIX
-- Nombre: María Fernanda Muñoz Torres
-- Fecha: 03/06/2026
-- -------------------------------------------

-- FASE 1

drop database if exists streamflix;

create database streamflix;

use streamflix;

select database();

create table peliculas(
id int auto_increment primary key,
titulo_español varchar(150) not null,
titulo_original varchar(150) not null,
director varchar (150) not null,
año int not null,
duracion int not null,
genero varchar(150) not null,
calificacion decimal (3,1) not null,
sinopsis text not null, 
idioma varchar(150) default 'ingles',
destacada boolean default false,
fecha_agregada DATE default(CURRENT_DATE())
);

describe peliculas;

show tables;
select count(*) 
from peliculas;

select * 
from peliculas;

-- FASE 2

insert into peliculas
(titulo_español, titulo_original, director, año, duracion, genero, calificacion, sinopsis, idioma, destacada)
values
 ('El Padrino', 'The Godfather', 'Francis Ford Coppola', 1972, 175, 'Drama', 9.2,
     'La historia de la familia Corleone en el mundo de la mafia italiana.', 'Inglés', TRUE),

('Pulp Fiction', 'Pulp Fiction', 'Quentin Tarantino', 1994, 154, 'Crimen', 8.9,
     'Historias entrelazadas de criminales en Los Ángeles.', 'Inglés', TRUE),

('El Caballero de la Noche', 'The Dark Knight', 'Christopher Nolan', 2008, 152, 'Acción', 9.0,
     'Batman enfrenta al caótico Joker en Gotham City.', 'Inglés', TRUE),

('Inception', 'Inception', 'Christopher Nolan', 2010, 148, 'Ciencia Ficción', 8.8,
     'Un ladrón que roba secretos del subconsciente durante el sueño.', 'Inglés', TRUE),

('Forrest Gump', 'Forrest Gump', 'Robert Zemeckis', 1994, 142, 'Drama', 8.8,
     'La vida extraordinaria de un hombre simple que presencia eventos históricos.', 'Inglés', TRUE),

('Matrix', 'The Matrix', 'Lana y Lilly Wachowski', 1999, 136, 'Ciencia Ficción', 8.7,
     'Un programador descubre que la realidad es una simulación.', 'Inglés', FALSE),

('El Señor de los Anillos: La Comunidad del Anillo',
     'The Lord of the Rings: The Fellowship of the Ring',
     'Peter Jackson', 2001, 178, 'Fantasía', 8.8,
     'Frodo inicia su viaje para destruir el Anillo Único.', 'Inglés', TRUE),

('Gladiador', 'Gladiator', 'Ridley Scott', 2000, 155, 'Acción', 8.5,
     'Un general romano busca venganza contra el emperador corrupto.', 'Inglés', FALSE),

('El Laberinto del Fauno', 'El Laberinto del Fauno', 'Guillermo del Toro', 2006, 118, 'Fantasía', 8.2,
     'Una niña descubre un mundo mágico durante la Guerra Civil Española.', 'Español', FALSE),

('Interestelar', 'Interstellar', 'Christopher Nolan', 2014, 169, 'Ciencia Ficción', 8.6,
     'Exploradores viajan por un agujero de gusano buscando un nuevo hogar.', 'Inglés', FALSE),

('Parásitos', 'Gisaengchung', 'Bong Joon-ho', 2019, 132, 'Thriller', 8.6,
     'Una familia pobre infiltra la casa de una familia rica.', 'Coreano', TRUE),

('Tiempos Violentos', 'Reservoir Dogs', 'Quentin Tarantino', 1992, 99, 'Crimen', 8.3,
     'Un atraco sale mal y los criminales sospechan de un traidor.', 'Inglés', FALSE),

('El Club de la Pelea', 'Fight Club', 'David Fincher', 1999, 139, 'Drama', 8.8,
     'Un hombre insomne forma un club clandestino de pelea.', 'Inglés', FALSE),

('La Lista de Schindler', 'Schindler''s List', 'Steven Spielberg', 1993, 195, 'Drama', 9.0,
     'La historia real de un empresario que salvó a más de mil judíos.', 'Inglés', TRUE),

('Toy Story', 'Toy Story', 'John Lasseter', 1995, 81, 'Animación', 8.3,
     'Los juguetes de Andy cobran vida cuando él no está.', 'Inglés', FALSE);


select count(*) as total 
from peliculas;

select id, titulo_español, año, fecha_agregada 
from peliculas;

-- FASE 3
-- Q.1
select id, titulo_español, director, año
from peliculas;

-- Q.2
select id, titulo_español, destacada 
from peliculas
where destacada is true;

-- Q.3
select id, titulo_español, genero, año 
from peliculas
where genero like 'Ciencia Ficción';

-- 3.2
-- Q.4
select id, titulo_español, calificacion 
from peliculas
where calificacion > 8.5
order by calificacion desc;

-- Q.5
select id, titulo_español, año 
from peliculas
where año between 1990 and 2000
order by año desc;

-- Q.6
select id, titulo_español, genero 
from peliculas
where genero in ( 'Crimen' ,'Drama') 
order by genero desc;

-- 3.3
-- Q.7
select id, titulo_español 
from peliculas
where titulo_español like 'El%'; 

-- Q.8
select id, titulo_español, director 
from peliculas
where director like '%Nolan%';

-- 3.4
-- Q.9
select id, titulo_español, calificacion 
from peliculas
order by calificacion desc
limit 5;

-- Q.10
select id, titulo_español, año 
from peliculas
where duracion is not null
limit 3;

-- Q.11 
select id, titulo_español, duracion 
from peliculas
where duracion is not null
order by duracion desc;


-- FASE 4
-- RETO 1

select titulo_español, genero, calificacion, año 
from peliculas
where genero in ('Ciencia Ficción', 'Drama')
and calificacion > 8.0
and año > 2000
order by calificacion desc;

-- RETO 2

select distinct genero 
from peliculas
order by genero;
 
 -- RETO 3
 
 select titulo_español, destacada, duracion, calificacion 
 from peliculas
 where destacada = TRUE
 and duracion > 140
 and calificacion > 8.5
 order by calificacion desc;


-- DECISIONES DE DISEÑO
-- ======================================
--
-- 1. ¿Por qué DECIMAL(3,1) para calificacion en vez de FLOAT?
--    Porque le estoy asignando un maximo de tres enteros y un solo decimal, con float puede ser mayor a tres decimales
--
-- 2. ¿Por qué VARCHAR(200) para titulo en vez de TEXT?
--    Porque el titulo no es tangrande como un texto y asi le asignamos menos memoria
--
-- 3. ¿Qué ventaja tiene AUTO_INCREMENT en id?
--    Evitar que se dupliquen los id y que se este consultando cual fue el último id creado para asi asignarlo al siguiente registro
--
-- 4. Si tuvieras que agregar precio_renta, ¿qué tipo usarías?
--    Usaria tipo decimal para mas precicion en el precio:'(3.2) tres unidades y dos decimales
--
-- 5. ¿Qué fue lo que más te sorprendió esta semana?
--    Las multiples consultas que se pueden hacer aplicando las sintaxis adecuada






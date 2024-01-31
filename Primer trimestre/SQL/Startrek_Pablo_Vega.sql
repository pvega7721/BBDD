--Tabla startrek Pablo Vega
drop table actor cascade constraints;
Create table actor(
	id int primary key,
	nombre_completo varchar(50),
    f_nacimiento date,
    nacionalidad varchar(50)
);
drop table personaje cascade constraints;
Create table personaje(
    id int primary key,
    nombre varchar(50),
    raza varchar(50),
    graduación_militar varchar(50)
);
drop table pelicula cascade constraints;
create table pelicula(
    id int primary key,
    director varchar(50),
    titulo varchar(50),
    anyo_lanzamiento date
);
drop table capitulo cascade constraints;
create table capitulo(
    temporada int,
    orden int,
    titulo varchar(50),
    fecha_la_emisión date
);
alter table capitulo
	add primary key (temporada, orden);
drop table planeta cascade constraints;
create table planeta(
    nombre varchar(50),
    galaxia varchar(50),
    código int primary key
);
drop table visita cascade constraints;
create table visita(
	problema_resuelto varchar2(200),
    código_planeta int,
    temporada int,
    orden int,
    código_nave int
);
alter table visita
	add primary key (temporada, orden,código_nave,código_planeta);
drop table aparecer cascade constraints;
create table aparecer(
    id_personaje int,
    id_pelicula int
);
alter table aparecer
	add primary key (id_personaje,id_pelicula);

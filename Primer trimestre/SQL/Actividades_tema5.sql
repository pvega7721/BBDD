--Ejercicio1
drop table barcos cascade constraints;
create table barcos(
    matricula char(7) primary key,
    nombre varchar2(50),
    clase varchar2(50),
    armador varchar2(50),
    capacidad int,
    nacionalidad varchar2(50)
);
drop table lotes cascade constraints;
create table lotes(
    codigo int primary key,
    matricula char(7),
    num_kg int,
    precio_kg_salida int,
    precio_kg_vendido int,
    fecha_venta date,
    cod_especie int,
    foreign key(matricula) references barcos(matricula) on delete cascade
);
drop table especies cascade constraints;
create table especies(
    codigo int primary key,
    nombre varchar2(50),
    tipo varchar2(50),
    cupo_barco int,
    caladero_ppal int,
    foreign key(matricula) references barcos(matricula) on delete cascade--
);
drop table caladeros cascade constraints;
create table caladeros(
    codigo int primary key,
    nombre varchar2(50),
    ubicacion varchar2(50),
    especie_ppal int,
    foreign key(matricula) references barcos(matricula) on delete cascade--
);
drop table fechas_capturas cascade constraints;
create table fechas_capturas(
    cod_especie int,
    cod_caladero int,
    fecha_inicio date,
    fecha_fin date
);
alter table lotes add foreign key(cod_especie) references especies(codigo) on delete cascade;

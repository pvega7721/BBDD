drop table barcos cascade constraints;
create table barcos(
    matricula char(7) primary key check (regexp_like(matricula,'[A-Z]{2}-[0-9]{4}')),
    nombre varchar2(50),
    clase int,
    armador varchar2(50),
    capacidad int,
    nacionalidad varchar2(50)
    );
drop table lotes cascade constraints;
create table lotes(
    codigo int,
    matricula char(7),
    num_kg int,
    precio_kg_salida int,
    precio_kg_vendido int,
    fecha_venta date not null,
    cod_especie int
    );
alter table lotes
    add(
        primary key(codigo),
        foreign key(matricula) references barcos(matricula) on delete CASCADE,
        check(num_kg>0),
        check(precio_kg_salida>0),
        check(precio_kg_vendido>0),
        check (precio_kg_vendido>precio_kg_salida)
    );
drop table especies cascade constraints;
create table especies(
    codigo int primary key,
    nombre varchar2(50),
    tipo varchar2(50),
    cupo_varco int,
    caladero_ppal int
    );
alter table lotes
    add(
        foreign key (cod_especie) references especies(codigo)
        );

drop table caladeros cascade constraints;
create table caladeros(
    codigo int primary key,
    nombre varchar2(50),
    ubicacion varchar2(100),
    especie_ppal int
    );
alter table caladeros
    add(
        check(nombre=upper(nombre)),
        check(ubicacion=upper(ubicacion))
        );
alter table especies
    add(
        foreign key (caladero_ppal) references caladeros(codigo)
        );
drop table fechas_capturas cascade constraints;
create table fechas_capturas(
    cod_especie int,
    cod_caladero int,
    fecha_inicio date,
    fecha_fin date
    );
alter table fechas_capturas
    add(
        primary key(cod_especie, cod_caladero),
        foreign key (cod_especie) references especies(codigo),
        foreign key (cod_caladero) references caladeros(codigo)
    );
alter table fechas_capturas
    add(
        check(fecha_inicio not between date'2023-02-02' and date'2023-03-28')
        );
alter table caladeros
    add(
        nombre_cientifico varchar2(50)
        );
alter table barcos
   drop COLUMN armador;

insert INTO barcos values ('AA-1234','NOMBRE1',12,2000,'ESPAÑA');
insert INTO barcos values ('AB-1234','NOMBRE2',12,2000,'FRANCIA');
insert INTO lotes values (1,'AB-1234',2000,10,11,'05-12-2023',null);




    



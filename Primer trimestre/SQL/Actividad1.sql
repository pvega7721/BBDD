drop table piezas CASCADE CONSTRAINTS;
create table piezas(
    id int check(id>0),
    nombre varchar2(100),
    id_fabricante int
);
drop table fabricantes cascade constraints;
create table fabricantes(
    id int,
    marca varchar(50)
);
--incluimos las PKs
alter table piezas
    add primary key(id);
alter table fabricantes
    add primary key(id);
alter table piezas
    add foreign key(id_fabricante)
    references fabricantes(id);
    
--¿Cómo añado un check?
--Actividad2
alter table piezas
    add precio number(4,2)
    check(precio>0);
--Actividad3
alter table piezas
    add codigo char(5)
    CHECK(REGEXP_LIKE(codigo,'P[0-9]^3[A-Z]'));
--Actividad4
alter table fabricantes
   add check(marca in ('FABRIC1','FABRIC2','FABRIC3')); 
    
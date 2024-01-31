--Actividad1
create table coches(
    id int,
    modelo varchar(100),
    marca varchar(50),
    cv int,
    consumo100 number
);
alter table coches
add primary key (id);
--Actividad2
create table compras(
    id int primary key,
    cliente varchar(100),
    FechaCompra date,
    idCoche int
);
alter table compras
add foreign key (idCoche) references coches(id);
--Actividad3
Create table piezas(
codigo int,
idAlmacen int,
Nombre varchar(50),
peso number
);
alter table piezas
add primary key (codigo, idAlmacen);
--Actividad4
--drop table coches;
--Actividad5
alter table coches drop
primary key;

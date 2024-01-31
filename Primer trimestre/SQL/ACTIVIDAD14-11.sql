drop table lotes CASCADE CONSTRAINTS
create table lotes(
    codigo int,
    num_kg number(8,2),
    precio_kg_salida number(8,2) check (precio_kg_salida > 0),
    precio_kg_vendido number(8,2),
    fecha date not null,
    constraint precio_kg_vendido_check check (precio_kg_vendido >0),
    check (precio_kg_vendido > precio_kg_salida)
);
alter table lotes
    add ( constraint codigo_pk primary key(codigo),
        constraint num_kg_check check (num_kg > 0)
);
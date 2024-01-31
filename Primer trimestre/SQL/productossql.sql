drop table productos cascade CONSTRAINTS
create table productos(
    referencia int,
    nombre varchar2(50),
    primary key (referencia, nombre)
);
alter table piezas drop constraints SYS_C008336;
alter table piezas add primary key(codigo);
create table fabricaciones(
    codigo_piezas int, 
    referencia_productos int,
    nombre_productos varchar2(50),
    fecha date,
    primary key (codigo_piezas,referencia_productos,nombre_productos),
    foreign key (codigo_piezas) references piezas(codigo),
    foreign key (referencia_productos,nombre_productos) references productos(referencia,nombre)
);
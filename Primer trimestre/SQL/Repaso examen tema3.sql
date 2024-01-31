--Ejercicio1
drop table productos cascade constraints;
create table productos(
    id int,
    nombre varchar2(100),
    tipo varchar2(50)
);
--Ejercicio2
drop table clientes cascade constraints;
create table clientes(
    codigo int,
    nombre varchar2(50),
    fecha_nacimiento date
);
--Ejercicio3
drop table pedidos cascade constraints;
create table pedidos(
    id_productos int,
    id_clientes int,
    fecha_compra date
);
--Ejercicio4
alter table productos
    add(
        primary key(id)
);
alter table clientes
    add(
        primary key(codigo)
);
alter table pedidos
    add(
        primary key(id_productos,id_clientes)
);
--Ejercicio5
alter table pedidos
    add(
        constraint fk_pedidos_producto foreign key(id_productos) references productos(id)
);
--Ejercicio6
alter table pedidos
    add(
        constraint fk_pedidos_clientes foreign key(id_clientes) references clientes(codigo)
);
--Ejercicio7
alter table pedidos drop constraint fk_pedidos_productos;
rename productos to products;
alter table pedidos add constraint fk_pedidos_productos foreign key(id_productos) references products(id);
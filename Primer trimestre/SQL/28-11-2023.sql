update estudiantes set apellidos='Gomez' where id =2;
--Ahora quiero que Pedro Gómez se apellide Gomez Perez, y tenga 24 años
--Esto implica modificar los campos APELLIDOS y EDAD de la tabla ESTUDIANTES
--El id de Pedro Gómez es 2
update estudiantes set apellidos='Gomez Perez', edad=24 where id = 2;
--Los pedros son pedros
update estudiantes set nombre='Pedros' where nombre='Pedro';
-- id 7 y 8 ahora tienen 29 años
update estudiantes set edad = 29 where id in (1,3);
--Actividad 4
update estudiantes set edad = 23 where nombre='Luis';
update estudiantes set edad =19 where nombre='Pedro';
--Actividad 5
update estudiantes set edad = 19;
--Actividad 6
delete from estudiantes where id =3;
delete from estudiantes where id =4;
--Actividad 7
delete from estudiantes;
--Crear tabla localidades
drop table localidades cascade constraints;
create table localidades(id int primary key, localidad varchar2(50));
--Crear el campo id_localidad en la tabla estudiantes
alter table estudiantes add id_localidad int;
alter table estudiantes add foreign key(id_localidad) references localidades(id) on delete set null;--update no se puede poner en oracle
--
update estudiantes set id_localidad = 1 where nombre = 'Luis' or nombre = 'Jose';
delete from localidades where id =1;
--Actividad 8
drop table clientes cascade constraints;
create table clientes(
        dni char(9) primary key check(REGEXP_LIKE(dni, '[0-9]{8}[A-Z]')),
        nombre varchar2(50) not null,
        direccion varchar2(50)
    );
drop table pagos cascade constraints;
create table pagos(
    id int primary key,
    dni char(9) check(regexp_like(dni,'[0-9]{8}[A-Z]')),
    importe number(5,2) check(importe>=0),
    foreign key(dni) references clientes(dni) on delete set null
);
insert into clientes values ('11111111A','luis','calle real 5');
insert into pagos values (1,'11111111A',20.99);
insert into pagos values (2,'11111111A',9.99);
delete from clientes where dni = '11111111A';
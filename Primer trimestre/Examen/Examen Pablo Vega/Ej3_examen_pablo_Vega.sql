--1
drop table agencias cascade constraints;
create table agencias(
    id int,
    direccion varchar2(100),
    telefono char(13),
    nombre varchar2(50),
    num_empleados int
);
--2
drop table empleados cascade constraints;
create table empleados(
    codigo_emp int,
    nombre varchar2(50),
    fecha_nac date,
    id_agencia int
);
--3
alter table agencias
    add(
        primary key(id)
    );
--4
alter table empleados
    add(
        primary key(codigo_emp)
    );
--5
alter table empleados
    add(
       foreign key(id_agencia) references agencias(id)
    );
--7
drop table inmobiliarias cascade constraints;
alter table agencias rename to inmobiliarias;
--8 NO SE HACERLO
--9
alter table empleados
    add(
        salario number(8,2)
        CHECK (salario > 0)
    );
--10
alter table inmobiliarias
    add(
        check telefono('[0034]','[0-9]{9}')
    );

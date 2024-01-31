drop table equipo cascade constraints;
create table equipo(
    nombre varchar2(100) primary key,
    direccion varchar2(100),
    telefono int
);
drop table pabellon cascade constraints;
create table pabellon(
    id int primary key,
    direccion varchar2(100),
    telefono int,
    capacidad int
);
drop table partido cascade constraints;
create table partido(
    id int primary key,
    resultado varchar2(100)
);
drop table empleado cascade constraints;
create table empleado(
    dni char(9) primary key,
    nombre_C varchar2(100),
    fecha_N date
);
drop table jugar cascade constraints;
create table jugar(
    min_jug int,
    faltas_c int,
    reb_d int,
    reb_a int,
    tiros_lib_l int,
    tiros_lib_a int,
    id_partido int
);
alter table jugar
    add(
        foreign key (id_partido) references partido(id),
        CHECK (faltas_c <= 5),
        check (min_jug <= 40)
    );
drop table tener_empleado cascade constraints;
create table tener_empleado(
    f_incorp date,
    dni_empleado char(9)
);
alter table tener_empleado
    add(
        foreign key (dni_empleado) references empleado(dni),
        check(regexp_like((dni_empleado),'[0-9]{8}[A-Z]'))
    );
drop table tener_pabellon cascade constraints;
create table tener_pabellon(
    direccion_equipo varchar2(100),
    direccion_pabellon varchar2(100),
    id_pabellon int,
    telefono_pabellon int
);
alter table empleado
    add(
        check(regexp_like((dni),'[0-9]{8}[A-Z]'))
    );
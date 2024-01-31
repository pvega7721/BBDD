drop table estacion cascade constraints;
create table estacion(
    nombre varchar2(50) primary KEY,
    direccion varchar2(100),
    telefono int,
    localidad varchar2(100),
    n_andenes int,
    vol_entradas int,
    vol_salidas int,
    n_empresas int
);
drop table responsable cascade constraints;
create table responsable(
    nombre varchar2(50),
    apellidos varchar2(50),
    dni char(9) primary key,
    edad int,
    direccion varchar2(100)
);
drop table trayectos cascade constraints;
create table trayectos(
    n_plazas_vendidas int,
    est_origen varchar2(100),
    est_destino varchar2(100),
    codigo int primary key,
    fecha_hora_salida date,
    fecha_hora_llegada date
);
drop table empresa cascade constraints;
create table empresa(
    cif int,
    nombre_comercial varchar2(50),
    direccion_compania varchar2(100),
    codigo int
);
alter table empresa
    add(
        primary key(cif,codigo)
    );
drop table autobus cascade constraints;
create table autobus(
    kilometros_recorridos int,
    fecha_ultima_revision date,
    anyos int,
    empresa_duena varchar2(100),
    matricula char(7),
    num_bastidor int
);
alter table autobus
    add(
        primary key(matricula,num_bastidor)
    );
drop table personal cascade constraints;
create table personal(
    nombre varchar2(50),
    direccion varchar2(100),
    apellidos varchar2(50),
    dni char(9) primary key
);
alter table empresa
    add(
        codigo_trayecto int
    );
alter table responsable
    add(
        check(regexp_like((dni),'[0-9]{8}[A-Z]'))
    );








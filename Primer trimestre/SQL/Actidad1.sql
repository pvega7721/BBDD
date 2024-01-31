--Actividad 1 
drop table alumnos cascade CONSTRAINTS;
create table Alumnos(
nombre varchar2(15),
apellido varchar2(50),
dni char(9), 
primary key(dni)
);
--Actividad 2
alter table alumnos add codigo_postal number (5);
--Actividad 3
alter table alumnos add fecha_nacimiento date;
--Actividad 4
alter table alumnos drop column codigo_postal;
alter table alumnos rename column fecha_nacimiento to f_nacimiento;
alter table alumnos modify apellido varchar2(200);
--Actividad 5
create table alumnos1(
    nombre varchar2(15),
    apellido varchar2(50),
    dni char(9) primary key
);
create table alumnos2(
    nombre varchar2(15),
    apellido varchar2(50),
    dni char(9)
);
alter table alumnos2 add primary key(dni);
create table alumnos3(
    nombre varchar2(15),
    apellido varchar2(50),
    dni char(9)
);
alter table alumnos3 
    add constraint pkdnialumnos3 primary key(dni);
create table alumnos4(
    nombre varchar2(15),
    apellido varchar2(50),
    dni char(9),
    primary key(dni)
);
--Actividad6
create table localidades(
    id int primary key,
    localidad varchar2(100)
);
alter table alumnos
    add id_localidad int;
alter table alumnos
    add constraint id_localidad_alumnos_fk 
    foreign key(id_localidad) 
    references localidades(id);
    ---------------------------

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    